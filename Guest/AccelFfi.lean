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

The accelerators below are the ones moved onto the interface. For each, the Pancake
side passes an array that holds everything the CSR reads or writes, and the stub is
unchanged (its `a0` is still the parameter block, now the configuration). The
specification is the byte-level function here, installed in the FFI oracle by
`Guest.guestOracle`.

* `@keccakf(p, 0, p, 200)`: the array is the 25-word state; no configuration.
* `@sha256f(c, 24, a, 96)`: the configuration is the CSR's parameter block
  `{state*, input*}` followed by the array base `a`; the array is the packed
  32-byte state followed by the 64-byte block. The parameter block's pointers are
  absolute addresses, so the specification requires `state* = a` and
  `input* = a + 32`, which is what makes the effect a function of the bytes.

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

/-- `@keccakf`: Keccak-f[1600] on the 200-byte array, with no configuration. -/
def keccakfBytes (configuration bytes : List UInt8) : Option (List UInt8) :=
  if configuration.length = 0 ∧ bytes.length = 200 then
    some (leBytesOfWords (Accel.keccakF (wordsOfLeBytes bytes)))
  else none

/-- `@sha256f`: one SHA-256 compression. The configuration is
`{state*, input*, base}` (24 bytes), the array the 32-byte packed state followed by
the 64-byte block (96 bytes) at `base`; the result replaces the state and keeps the
block. -/
def sha256fBytes (configuration bytes : List UInt8) : Option (List UInt8) :=
  match wordsOfLeBytes configuration with
  | [statePtr, inputPtr, base] =>
      if configuration.length = 24 ∧ bytes.length = 96 ∧ statePtr = base ∧
          inputPtr = base + 32 then
        let words := wordsOfLeBytes bytes
        let state := Accel.u32sToDwords (Accel.sha256Compress
          (Accel.dwordsToU32s (words.take 4)) (Accel.dwordsToU32sBE (words.drop 4)))
        some (leBytesOfWords state ++ bytes.drop 32)
      else none
  | _ => none

/-- The accelerators that go through the ordinary foreign-call interface. -/
def acceleratorBytes (name : String) (configuration bytes : List UInt8) :
    Option (List UInt8) :=
  match name with
  | "keccakf" => keccakfBytes configuration bytes
  | "sha256f" => sha256fBytes configuration bytes
  | _ => none

end Guest
