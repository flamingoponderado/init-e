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
* malformed shapes are rejected.
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
  ok := (← check "sha256f: rejects a state pointer that is not the array base" (
    (sha256fBytes (leBytesOfWords [base + 8, base + 32, base]) arr).isNone)) && ok
  ok := (← check "sha256f: rejects an input pointer that is not base + 32" (
    (sha256fBytes (leBytesOfWords [base, base + 40, base]) arr).isNone)) && ok
  ok := (← check "sha256f: rejects a wrong array length" (
    (sha256fBytes conf (arr.take 95)).isNone)) && ok
  ok := (← check "sha256f: rejects a short configuration" (
    (sha256fBytes (conf.take 16) arr).isNone)) && ok
  return if ok then 0 else 1
