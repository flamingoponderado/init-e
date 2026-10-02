# Accelerators through CakeML's foreign-call interface

The accelerated guest (`ACCEL=1`) replaces software crypto with ZisK precompile CSRs,
reached through `@name(...)` foreign calls whose stubs are in `guest/runtime/start.S`.
This note records how those calls relate to the foreign-call interface that
CakeML/Pancake gives a callee, which accelerators have been moved onto it, and how.

## The interface

`@name(c, n, a, m)` gives the callee the `n` configuration bytes at `c` and the `m`
array bytes at `a`. The callee returns new array bytes of the same length, and it
may change nothing else in the program's memory. Because the callee sees only those
bytes, the call is specified by a function of two byte lists, with no access to
memory, addresses or the rest of the machine. Flapjack models this path as
`panValueFfiExtCall` with an oracle `FfiOracle` (`FfiName → host → configuration →
bytes → FfiOracleResult`).

The ZisK CSRs do not have that shape by default. The stub's `a0` points to a
parameter block of pointers, and the hardware follows them to operands anywhere in
memory and writes results elsewhere. `Guest/Accel.lean` models that as a
transformation of Pancake memory (`PanValueMemoryFfiHandler`), which flapjack
describes as "an instruction-like target extension", not the ordinary foreign-call
boundary. The original calls passed zero-length arrays (`@arith256mod(p, 0, 0, 0)`),
so as foreign calls they would have been specified as doing nothing.

## The convention

An accelerator call fits the interface when

1. everything the CSR reads is in the configuration or the array;
2. everything it writes is in the array;
3. the result is a function of the configuration and array bytes alone.

Condition 3 needs care because the parameter block holds absolute addresses. The
convention is: the configuration is the parameter block with the array's base address
appended, and the specification requires the block's pointers to equal the base plus
fixed offsets. Then the pointers add no information, and the effect depends only on
the bytes.

The stub does not change: its `a0` is the first argument, which is still the
parameter block. Passing an array costs nothing at run time, since only the formal
semantics reads it.

## What is converted

All eighteen accelerators. Each call's operands and results live in one block that is the
array; the configuration is the CSR's own parameter block (the pointers the hardware
follows) followed by one extra word, the block's address. The stubs are unchanged, since
`a0` is still the parameter block.

| call | configuration | array (the block) |
| --- | --- | --- |
| `@keccakf(p, 0, p, 200)` | none | the 25-word state |
| `@sha256f(c, 24, a, 96)` | `state*, input*, a` | packed 32-byte state, 64-byte block (`sha_accel + 24`) |
| `@arith256mod`, `@bn_arith256` (`b, 48, b, 208`) | `a*, b*, c*, m*, d*, base` | a, b, c, m, d, 32 bytes each, after the 48-byte configuration |
| `@bls_arith384` (`b, 48, b, 288`) | same | 48 bytes each; the modulus is copied in |
| `@secpadd`, `@bn_g1_add`, `@bls_g1_add` | `p1*, p2*, base` | both points; for secp the caller's point is copied in and the sum copied back |
| `@secpdbl`, `@bn_g1_dbl`, `@bls_g1_dbl` | none | the point, doubled in place |
| `@bn_fp2_*`, `@bls_fp2_*` | `f1*, f2*, base` | both elements |
| `@blake2bround` (`b, 32, b, 288`) | `row, state*, input*, base` | the 16-word working vector and message |

`sha256_block` always builds the block at `sha_accel + 56`, copying it in unless the
caller already did (`sha256_pair` builds it there). The BN254, BLS12-381 and BLAKE2b
buffers, previously separate allocations, are now carved out of one block each.

The specifications are `Guest.acceleratorBytes` and its parts in `Guest/AccelFfi.lean`,
over a `Region` (the array and its base address): a call fails if a pointer or operand
lies outside the array or is misaligned. `Guest.guestOracle` installs them, and it answers
`@halt` and `@trap` by returning the array unchanged. The memory-effect handler is gone
from the model. `Guest/Accel.lean` keeps its transcription of ZisK's `csrsWrite` over word
memory as the reference the specifications are checked against.

A failing accelerator call (zero modulus, an unreduced or degenerate curve input, a BLAKE2b
row of 10 or more) now ends the run in the model as a final FFI event, `.final .failed`,
which is what a trapping machine is, instead of an evaluation failure.

## What is checked

* `lake exe accel-ffi-check` (also in `tools/check_all.sh`): `keccakfBytes` gives the
  SHA3-256 digest of the empty message from its padding block, `sha256fBytes` gives
  SHA-256("abc") in the packed layout the guest uses, malformed shapes are rejected, and
  every other accelerator's specification agrees with the word-memory reference
  `acceleratorEffect` on concrete vectors, failures included: arithmetic with 4 and 6 limbs
  and a zero modulus, point addition and doubling on secp256k1, BN254 and BLS12-381
  (generator, G + 2G, G + G, an invalid point), Fp2 operations with valid and out-of-range
  elements, and BLAKE2b rows 3, 9 and 12.
* The secp256k1, BN254, BLS12-381 and KZG vector checks and the `t_blake2f` and
  `t_precompiles` unit tests, accelerated, which exercise the converted calls on the
  real CSRs.
* `tools/accel-ffi-smoke.py` (also in `check_all`): `guest/test/accel_ffi_smoke.pnk`
  makes one `@keccakf` and one `@sha256f` call in the new convention, and its output on
  `ziskemu`, through the unchanged stubs and the real CSRs, equals the `hashlib`
  reference for the same inputs. This ties the byte-level specifications to the
  hardware behaviour for those vectors.
* `t_keccak` and `t_sha256` under Spike for both guests, and `lake build Guest` (also in
  `check_all`, so the Lean library stays in step with the guest sources).
* The whole `tests-zkevm@v21.0.1` corpus on `ziskemu` with the accelerated guest:
  33,614 of 33,614, with all eighteen accelerators converted. The cost is negligible: mean
  steps over the passing cases went from 8,835,587 to 8,837,101 (+0.017%), and the largest
  case from 12,276,776,458 to 12,290,505,139 (+0.11%), mostly from the extra 64-byte block
  copy in `sha256_block` and the copies of the caller's point in `secpadd`.

## How the calls are tested

Through compilation: the Pancake program is compiled and run, and the foreign calls are
exercised on the compiled code against `ziskemu`'s real accelerator CSRs. The Lean
semantics is not executed on programs for this. Running the guest in it was already
impractical, and a program that reads memory after a foreign call with a large array
does not finish at all, because flapjack's `panValueFfiWriteBytes` (a port of CakeML's
`write_bytearray`) takes time exponential in the array length. Symbolic proofs are not
affected.

When flapjack's compiler correctness theorem is available, the byte-level
specifications here are what it is instantiated with: each accelerator call is a foreign
call whose result is a function of its configuration and array bytes, and the stub
satisfying that function is the platform assumption. Until then the compiled-code tests
above are the evidence.

Before this change the accelerators went through the memory-effect handler, which
writes whole words and does not have the exponential write.

## What it does not show

* Conformance of ZisK to the specification is an assumption about the platform, as
  CakeML's is about its C stubs. It is checked here only by tests.
* The Pancake memory model must cover the array: `read_bytearray` fails outside the
  program's addressable memory.
