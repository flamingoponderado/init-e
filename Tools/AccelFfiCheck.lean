import Guest.Accel
import Guest.AccelFfi

/-!
`lake exe accel-ffi-check`: the byte-level accelerator specifications of
`Guest.AccelFfi` against independent reference values.

* `keccakfBytes`: absorbing the SHA3-256 padding block of the empty message into a
  zero state and applying Keccak-f gives the SHA3-256 digest of the empty message in
  the first 32 bytes.
* `sha256fBytes`: one compression of the padded block of `"abc"` from the SHA-256
  initial state gives SHA-256("abc"), in the packed state layout the guest uses
  (eight 32-bit words, two per little-endian 64-bit cell).
* malformed shapes are rejected;
* every other accelerator: the byte-level specification agrees with the memory-effect
  reference `Guest.acceleratorEffect` (the transcription of ZisK's `csrsWrite` over word
  memory) on concrete vectors, failures included.
-/

open Guest

def hex (bytes : List UInt8) : String :=
  String.join (bytes.map fun b =>
    let n := b.toNat
    String.ofList [Nat.digitChar (n / 16), Nat.digitChar (n % 16)])

def unhex (s : String) : List UInt8 :=
  let digit (c : Char) : Nat := if c.isDigit then c.toNat - 48 else c.toNat - 87
  let rec go : List Char → List UInt8
    | a :: b :: rest => UInt8.ofNat (digit a * 16 + digit b) :: go rest
    | _ => []
  go s.toList

def check (name : String) (ok : Bool) : IO Bool := do
  IO.println s!"{if ok then "PASS" else "FAIL"}  {name}"
  pure ok

/-! ### Differential check against the memory-effect reference -/

open Flapjack RiscvZkvm.Rv64

/-- Word memory holding the region's cells and a configuration block at `confAddr`. -/
def memoryOf (r : Region) (conf : List Word) (confAddr : Word) : Memory :=
  fun a =>
    let off := (a - r.base).toNat
    if a.toNat % 8 = 0 ∧ off + 8 ≤ r.bytes.length then
      match wordsOfLeBytes ((r.bytes.drop off).take 8) with
      | [w] => some (.word w)
      | _ => none
    else
      let k := (a - confAddr).toNat
      if a.toNat % 8 = 0 ∧ k / 8 < conf.length then some (.word conf[k / 8]!) else none

/-- The region's bytes read back from word memory. -/
def regionOf (m : Memory) (r : Region) : Option (List UInt8) := do
  let words ← (List.range (r.bytes.length / 8)).mapM fun i =>
    match m (r.base + BitVec.ofNat 64 (8 * i)) with
    | some (.word w) => some w
    | _ => none
  pure (leBytesOfWords words)

/-- One case: the reference runs on word memory with the parameter block (`oldConf`,
without the base) at a fixed address, or on the array itself when `oldP` is the array
base (the doubling calls); the specification runs on the bytes with `newConf`. -/
def diffCase (name : String) (oldConf newConf : List Word) (r : Region) (onArray : Bool) :
    IO Bool := do
  let confAddr : Word := 0x10000000
  let mem := memoryOf r oldConf confAddr
  let reference : Option (List UInt8) :=
    (acceleratorEffect name (if onArray then r.base else confAddr) mem).bind (regionOf · r)
  let spec := acceleratorBytes name (leBytesOfWords newConf) r.bytes
  check s!"{name} (reference and specification agree: {if reference.isSome then "result" else "fails"})"
    (reference == spec)

def limbsOf (limbs n : Nat) : List Word := Accel.natToLeLimbs limbs n

def blockBase : Word := 0xa1000000

/-- `a, b, c, m, d` laid out after `header` bytes, `limbs` words each. -/
def arithRegion (limbs header : Nat) (a b c m : Nat) : Region × List Word :=
  let sz := 8 * limbs
  let off (i : Nat) : Word := blockBase + BitVec.ofNat 64 (header + i * sz)
  let words := (limbsOf limbs a) ++ (limbsOf limbs b) ++ (limbsOf limbs c) ++
    (limbsOf limbs m) ++ List.replicate limbs 0
  ({ base := blockBase
     bytes := List.replicate header 0 ++ leBytesOfWords words },
   [off 0, off 1, off 2, off 3, off 4])

def pointRegion (limbs : Nat) (first second : List Word) : Region × Word × Word :=
  let sz := 16 * limbs
  ({ base := blockBase, bytes := leBytesOfWords (first ++ second) },
   blockBase, blockBase + BitVec.ofNat 64 sz)

def diffChecks : IO Bool := do
  let mut ok := true
  -- arithmetic mod m: 4 and 6 limbs, and a zero modulus
  for (name, limbs) in [("arith256mod", 4), ("bn_arith256", 4), ("bls_arith384", 6)] do
    for m in [Accel.bn254P, 0xffffffffffffffc5, 0] do
      let (r, ptrs) := arithRegion limbs 48 (2 ^ 200 + 12345) (2 ^ 190 + 777) 99 m
      ok := (← diffCase name ptrs (ptrs ++ [blockBase]) r false) && ok
  -- point addition and doubling on the three curves
  let curves : List (String × String × Nat × Nat × Nat × Nat) := [
    ("secpadd", "secpdbl", Accel.secpP, 4,
      0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798,
      0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8),
    ("bn_g1_add", "bn_g1_dbl", Accel.bn254P, 4, 1, 2),
    ("bls_g1_add", "bls_g1_dbl", Accel.bls12P, 6,
      0x17F1D3A73197D7942695638C4FA9AC0FC3688C4F9774B905A14E3A3F171BAC586C55E83FF97A1AEFFB3AF00ADB22C6BB,
      0x08B3F481E3AAA0F1A09E30ED741D8AE4FCF5E095D5D00AF600DB18CB2C04B3EDD03CC744A2888AE40CAA232946C5E7E1)]
  for (addName, dblName, prime, limbs, gx, gy) in curves do
    let g := limbsOf limbs gx ++ limbsOf limbs gy
    let g2 := Accel.curveDblL prime limbs g
    -- doubling in place
    ok := (← diffCase dblName [] [] ⟨blockBase, leBytesOfWords g⟩ true) && ok
    -- G + 2G, G + G (same x: fails), and an invalid point
    let bad := limbsOf limbs (prime + 5) ++ limbsOf limbs gy
    for (first, second) in [(g, g2), (g, g), (bad, g2)] do
      let (r, p1, p2) := pointRegion limbs first second
      ok := (← diffCase addName [p1, p2] [p1, p2, blockBase] r false) && ok
  -- Fp2 operations
  for (name, prime, limbs) in [("bn_fp2_add", Accel.bn254P, 4), ("bn_fp2_sub", Accel.bn254P, 4),
      ("bn_fp2_mul", Accel.bn254P, 4), ("bls_fp2_add", Accel.bls12P, 6),
      ("bls_fp2_sub", Accel.bls12P, 6), ("bls_fp2_mul", Accel.bls12P, 6)] do
    let a := limbsOf limbs 5 ++ limbsOf limbs (prime - 3)
    let b' := limbsOf limbs (prime - 1) ++ limbsOf limbs (2 ^ 100)
    let (r, p1, p2) := pointRegion limbs a b'
    ok := (← diffCase name [p1, p2] [p1, p2, blockBase] r false) && ok
    let (r2, q1, q2) := pointRegion limbs a (limbsOf limbs (prime + 1) ++ limbsOf limbs 2)
    ok := (← diffCase name [q1, q2] [q1, q2, blockBase] r2 false) && ok
  -- BLAKE2b round: a valid row and a row that traps
  let state := (List.range 16).map fun i => BitVec.ofNat 64 (0x0123456789abcdef * (i + 1))
  let input := (List.range 16).map fun i => BitVec.ofNat 64 (0xfedcba9876543210 + i)
  for index in [3, 9, 12] do
    let r : Region := ⟨blockBase, leBytesOfWords (state ++ input)⟩
    let ps := blockBase
    let pin := blockBase + 128
    ok := (← diffCase "blake2bround" [BitVec.ofNat 64 index, ps, pin]
      [BitVec.ofNat 64 index, ps, pin, blockBase] r false) && ok
  return ok

def main : IO UInt32 := do
  let mut ok := true
  -- keccakf: SHA3-256("") from the padded first block
  let block := (0x06 :: List.replicate 134 0x00) ++ [0x80] ++ List.replicate 64 0x00
  let sha3empty := "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a"
  ok := (← check "keccakf: SHA3-256 of the empty message" (
    match keccakfBytes [] block with
    | some out => out.length = 200 && hex (out.take 32) = sha3empty
    | none => false)) && ok
  ok := (← check "keccakf: rejects a non-empty configuration" (
    (keccakfBytes [0] block).isNone)) && ok
  ok := (← check "keccakf: rejects a short array" (
    (keccakfBytes [] (block.take 192)).isNone)) && ok
  -- sha256f: SHA-256("abc")
  let iv : List Nat := [0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
    0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19]
  let packed : List Word := [0, 1, 2, 3].map fun i =>
    BitVec.ofNat 64 (iv[2 * i]! + iv[2 * i + 1]! * 2 ^ 32)
  let msg : List UInt8 := [0x61, 0x62, 0x63, 0x80] ++ List.replicate 59 0x00 ++ [0x18]
  let base : Word := 0xa1000018
  let conf := leBytesOfWords [base, base + 32, base]
  let arr := leBytesOfWords packed ++ msg
  let digest := "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
  ok := (← check "sha256f: SHA-256 of \"abc\"" (
    match sha256fBytes conf arr with
    | some out =>
        out.length = 96 && out.drop 32 = msg &&
        -- unpack the eight words (two per cell, low half first) and print them big-endian
        hex ((wordsOfLeBytes (out.take 32)).flatMap fun w =>
          let lo := w.toNat % 2 ^ 32
          let hi := w.toNat / 2 ^ 32
          [lo, hi].flatMap fun v => [v / 2 ^ 24 % 256, v / 2 ^ 16 % 256, v / 2 ^ 8 % 256, v % 256].map
            fun n => UInt8.ofNat n) = digest
    | none => false)) && ok
  ok := (← check "sha256f: rejects a state pointer outside the array" (
    (sha256fBytes (leBytesOfWords [base + 4096, base + 32, base]) arr).isNone)) && ok
  ok := (← check "sha256f: rejects a misaligned input pointer" (
    (sha256fBytes (leBytesOfWords [base, base + 36, base]) arr).isNone)) && ok
  ok := (← check "sha256f: rejects a block that runs past the array" (
    (sha256fBytes (leBytesOfWords [base, base + 40, base]) arr).isNone)) && ok
  ok := (← check "sha256f: rejects a wrong configuration length" (
    (sha256fBytes (conf.take 16) arr).isNone)) && ok
  ok := (← diffChecks) && ok
  return if ok then 0 else 1
