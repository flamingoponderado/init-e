import RiscvZkvm.Rv64.ZiskAccel
import Guest.Basic

/-!
# Accelerators as ordinary foreign calls

CakeML's foreign-call interface is narrow: `@name(c, n, a, m)` hands the callee
the `n` configuration bytes at `c` and the `m` array bytes at `a`, and the callee
may replace the array bytes. The result must be a function of those bytes alone,
and nothing else in memory may change. A call that fits can be specified as a
function of two byte lists, with no access to memory, addresses or the rest of the
machine.

The ZisK accelerators were first modelled the other way (`Guest.Accel`): the
stub's `a0` points to a parameter block of pointers, the hardware follows them to
operands anywhere in memory, and the effect is a transformation of Pancake memory.
That is a target extension, outside the foreign-call interface.

Every accelerator is specified as a function of the configuration bytes and the
array bytes. The Pancake side lays out each call's operands and results in one block
and passes it as the array; the CSR's own parameter block (the pointers the hardware
follows) is the configuration, followed by one extra word: the array's base address.
The pointers are absolute addresses, so the specification needs the base to find the
operands inside the array, and it fails the call if any pointer or operand lies outside
the array. That the base really is the array's address is an obligation on the caller,
since the specification cannot see addresses. The stubs are unchanged: their `a0` is
still the parameter block.

| call | configuration (words) | array |
| --- | --- | --- |
| `keccakf` | none | the 25-word state |
| `sha256f` | `state*, input*, base` | the packed state and the block |
| `arith256mod`, `bn_arith256`, `bls_arith384` | `a*, b*, c*, m*, d*, base` | the operands, modulus and result |
| `secpadd`, `bn_g1_add`, `bls_g1_add` | `p1*, p2*, base` | both points |
| `secpdbl`, `bn_g1_dbl`, `bls_g1_dbl` | none | the point, doubled in place |
| `bn_fp2_*`, `bls_fp2_*` | `f1*, f2*, base` | both elements |
| `blake2bround` | `index, state*, input*, base` | the 16-word state and message |

A call that does not have this shape is a failed call (`none`).
-/

namespace Guest

open RiscvZkvm.Rv64

/-- The eight little-endian bytes of a word. -/
def leBytes (w : Word) : List UInt8 :=
  (List.range 8).map fun i => UInt8.ofNat ((w.toNat / 256 ^ i) % 256)

/-- The word whose little-endian bytes are `bytes` (missing high bytes zero). -/
def wordOfLeBytes (bytes : List UInt8) : Word :=
  BitVec.ofNat 64 (bytes.foldr (fun byte acc => acc * 256 + byte.toNat) 0)

/-- The little-endian words packed in `bytes`; a trailing partial word is dropped. -/
def wordsOfLeBytes : List UInt8 → List Word
  | b0 :: b1 :: b2 :: b3 :: b4 :: b5 :: b6 :: b7 :: rest =>
      wordOfLeBytes [b0, b1, b2, b3, b4, b5, b6, b7] :: wordsOfLeBytes rest
  | _ => []

/-- The little-endian bytes of a list of words. -/
def leBytesOfWords (words : List Word) : List UInt8 :=
  words.flatMap leBytes

/-! ### Regions -/

/-- The array argument of a foreign call: its bytes and the address they start at. -/
structure Region where
  base : Word
  bytes : List UInt8

namespace Region

/-- Offset of the `n` word cells at `p` inside the region; `none` when `p` is not
8-byte aligned or the cells are not all inside. -/
def offset? (r : Region) (p : Word) (n : Nat) : Option Nat :=
  let off := (p - r.base).toNat
  if p.toNat % 8 = 0 ∧ off + 8 * n ≤ r.bytes.length then some off else none

/-- `n` words at `p`. -/
def readWords (r : Region) (p : Word) (n : Nat) : Option (List Word) := do
  let off ← r.offset? p n
  pure (wordsOfLeBytes ((r.bytes.drop off).take (8 * n)))

def readWord (r : Region) (p : Word) : Option Word := do
  match ← r.readWords p 1 with
  | [w] => pure w
  | _ => none

/-- Overwrite the words at `p`. -/
def writeWords (r : Region) (p : Word) (words : List Word) : Option Region := do
  let off ← r.offset? p words.length
  pure { r with bytes := r.bytes.take off ++ leBytesOfWords words ++
    r.bytes.drop (off + 8 * words.length) }

end Region

/-- The configuration as exactly `n` words. -/
def configWords (configuration : List UInt8) (n : Nat) : Option (List Word) :=
  if configuration.length = 8 * n then some (wordsOfLeBytes configuration) else none

/-! ### The specifications -/

/-- `@keccakf`: Keccak-f[1600] on the 200-byte array, with no configuration. -/
def keccakfBytes (configuration bytes : List UInt8) : Option (List UInt8) :=
  if configuration.length = 0 ∧ bytes.length = 200 then
    some (leBytesOfWords (Accel.keccakF (wordsOfLeBytes bytes)))
  else none

/-- `@sha256f`: one SHA-256 compression of the 64-byte block at `input*` into the
packed 32-byte state at `state*` (CSR 0x805). -/
def sha256fBytes (configuration bytes : List UInt8) : Option (List UInt8) :=
  match configWords configuration 3 with
  | some [statePtr, inputPtr, base] =>
      let r : Region := ⟨base, bytes⟩
      (do
        let state ← r.readWords statePtr 4
        let input ← r.readWords inputPtr 8
        let r' ← r.writeWords statePtr (Accel.u32sToDwords (Accel.sha256Compress
          (Accel.dwordsToU32s state) (Accel.dwordsToU32sBE input)))
        pure r'.bytes)
  | _ => none

/-- `*d := (a·b + c) mod m` over `limbs`-limb operands (CSRs 0x802, 0x80b). -/
def arithModBytes (limbs : Nat) (configuration bytes : List UInt8) : Option (List UInt8) :=
  match configWords configuration 6 with
  | some [pa, pb, pc, pm, pd, base] =>
      let r : Region := ⟨base, bytes⟩
      (do
        let a ← r.readWords pa limbs
        let b ← r.readWords pb limbs
        let c ← r.readWords pc limbs
        let m ← r.readWords pm limbs
        let _ ← r.readWords pd limbs
        let modulus := Accel.leLimbsToNat m
        if modulus = 0 then none
        else
          let r' ← r.writeWords pd (Accel.natToLeLimbs limbs (Accel.arith256Mod
            (Accel.leLimbsToNat a) (Accel.leLimbsToNat b) (Accel.leLimbsToNat c) modulus))
          pure r'.bytes)
  | _ => none

/-- `*p1 := p1 + p2` by the chord formula (CSRs 0x803, 0x806, 0x80c). -/
def curveAddBytes (prime limbs : Nat) (configuration bytes : List UInt8) :
    Option (List UInt8) :=
  match configWords configuration 3 with
  | some [p1, p2, base] =>
      let r : Region := ⟨base, bytes⟩
      (do
        let pt1 ← r.readWords p1 (2 * limbs)
        let pt2 ← r.readWords p2 (2 * limbs)
        if Accel.ptValid prime limbs pt1 && Accel.ptValid prime limbs pt2 &&
            !(Accel.leLimbsToNat (pt1.take limbs) == Accel.leLimbsToNat (pt2.take limbs)) then
          let r' ← r.writeWords p1 (Accel.curveAddL prime limbs pt1 pt2)
          pure r'.bytes
        else none)
  | _ => none

/-- The point in the array doubled in place by the tangent formula (CSRs 0x804,
0x807, 0x80d); the array is the point and there is no configuration. -/
def curveDblBytes (prime limbs : Nat) (configuration bytes : List UInt8) :
    Option (List UInt8) :=
  if configuration.length = 0 ∧ bytes.length = 16 * limbs then
    let pt := wordsOfLeBytes bytes
    if Accel.ptValid prime limbs pt && !(Accel.leLimbsToNat (pt.drop limbs) == 0) then
      some (leBytesOfWords (Accel.curveDblL prime limbs pt))
    else none
  else none

/-- `*f1 := f1 ∘ f2` in Fp2 (CSRs 0x808–0x80a, 0x80e–0x810). -/
def complexBytes (op : Nat → Nat → List Word → List Word → List Word)
    (prime limbs : Nat) (configuration bytes : List UInt8) : Option (List UInt8) :=
  match configWords configuration 3 with
  | some [f1, f2, base] =>
      let r : Region := ⟨base, bytes⟩
      (do
        let a ← r.readWords f1 (2 * limbs)
        let b ← r.readWords f2 (2 * limbs)
        if Accel.ptValid prime limbs a && Accel.ptValid prime limbs b then
          let r' ← r.writeWords f1 (op prime limbs a b)
          pure r'.bytes
        else none)
  | _ => none

/-- One BLAKE2b round: the configuration is `{index, state*, input*, base}`
(CSR 0x819); `index` is the SIGMA row, a value and not a pointer. -/
def blake2bBytes (configuration bytes : List UInt8) : Option (List UInt8) :=
  match configWords configuration 4 with
  | some [index, pstate, pinput, base] =>
      let r : Region := ⟨base, bytes⟩
      (do
        let state ← r.readWords pstate 16
        let input ← r.readWords pinput 16
        if index.toNat < 10 then
          let r' ← r.writeWords pstate (Accel.blake2bRound index.toNat state input)
          pure r'.bytes
        else none)
  | _ => none

/-- Every accelerator by the guest's `@name`. -/
def acceleratorBytes (name : String) (configuration bytes : List UInt8) :
    Option (List UInt8) :=
  match name with
  | "keccakf" => keccakfBytes configuration bytes
  | "sha256f" => sha256fBytes configuration bytes
  | "arith256mod" | "bn_arith256" => arithModBytes 4 configuration bytes
  | "bls_arith384" => arithModBytes 6 configuration bytes
  | "secpadd" => curveAddBytes Accel.secpP 4 configuration bytes
  | "secpdbl" => curveDblBytes Accel.secpP 4 configuration bytes
  | "bn_g1_add" => curveAddBytes Accel.bn254P 4 configuration bytes
  | "bn_g1_dbl" => curveDblBytes Accel.bn254P 4 configuration bytes
  | "bn_fp2_add" => complexBytes Accel.complexAddL Accel.bn254P 4 configuration bytes
  | "bn_fp2_sub" => complexBytes Accel.complexSubL Accel.bn254P 4 configuration bytes
  | "bn_fp2_mul" => complexBytes Accel.complexMulL Accel.bn254P 4 configuration bytes
  | "bls_g1_add" => curveAddBytes Accel.bls12P 6 configuration bytes
  | "bls_g1_dbl" => curveDblBytes Accel.bls12P 6 configuration bytes
  | "bls_fp2_add" => complexBytes Accel.complexAddL Accel.bls12P 6 configuration bytes
  | "bls_fp2_sub" => complexBytes Accel.complexSubL Accel.bls12P 6 configuration bytes
  | "bls_fp2_mul" => complexBytes Accel.complexMulL Accel.bls12P 6 configuration bytes
  | "blake2bround" => blake2bBytes configuration bytes
  | _ => none

end Guest
