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

| call | configuration | array | specification |
| --- | --- | --- | --- |
| `@keccakf(p, 0, p, 200)` | none | the 25-word state | `Guest.keccakfBytes` |
| `@sha256f(c, 24, a, 96)` | `{state*, input*, a}` | packed 32-byte state, 64-byte block | `Guest.sha256fBytes`, requires `state* = a`, `input* = a + 32` |

`sha256_block` now always builds the block at `sha_accel + 56`, copying it in unless
the caller already did (`sha256_pair` builds it there), so the array is the 96 bytes
at `sha_accel + 24`.

The specifications are in `Guest/AccelFfi.lean`, built on the arithmetic that
`Guest/Accel.lean` takes from `RiscvZkvm.Rv64.ZiskAccel`, and `Guest.guestOracle`
installs them. `Guest.guestMemoryFfi` no longer handles these two names, and flapjack
falls back to the ordinary path when the memory handler declines.

## What is checked

* `lake exe accel-ffi-check` (also in `tools/check_all.sh`): `keccakfBytes` gives the
  SHA3-256 digest of the empty message from its padding block, `sha256fBytes` gives
  SHA-256("abc") in the packed layout the guest uses, and malformed shapes are
  rejected.
* `tools/accel-ffi-smoke.py` (also in `check_all`): `guest/test/accel_ffi_smoke.pnk`
  makes one `@keccakf` and one `@sha256f` call in the new convention, and its output on
  `ziskemu`, through the unchanged stubs and the real CSRs, equals the `hashlib`
  reference for the same inputs. This ties the byte-level specifications to the
  hardware behaviour for those vectors.
* `t_keccak` and `t_sha256` under Spike for both guests, and `lake build Guest` (also in
  `check_all`, so the Lean library stays in step with the guest sources).
* The whole `tests-zkevm@v21.0.1` corpus on `ziskemu` with the accelerated guest:
  33,614 of 33,614. The cost is negligible: mean steps over the passing cases went from
  8,835,587 to 8,836,255 (+0.008%), and the largest case from 12,276,776,458 to
  12,290,475,154 (+0.11%), from the extra 64-byte block copy in `sha256_block`.

## Running it in Lean: a limit of flapjack's byte writes

The Lean semantics accepts these calls (the foreign call goes through
`panValueFfiExtCall` and `Guest.guestOracle`), but **executing** a program that reads
memory after such a call does not finish in practice. Flapjack writes the returned array
with `panValueFfiWriteBytes`, which builds the new memory byte by byte from the end and
takes time exponential in the array length (measured: about 1.3 times per extra byte,
5 ms at 28 bytes, 76 ms at 38 bytes; the 200-byte keccak array and the 96-byte sha256
array are out of reach). The same code is on flapjack main. Proofs that reason about
the semantics symbolically are not affected, but `lake exe run-guest` and
`lake exe run-program` (a runner for any cpp-expanded program, such as the smoke test)
cannot execute past the call. A forward, one-pass write in flapjack would remove the
limit; nothing in this repository depends on how it is fixed.

Before this change the accelerators went through the memory-effect handler, which
writes whole words and does not have the problem.

## What it does not show

* Conformance of ZisK to the specification is an assumption about the platform, as
  CakeML's is about its C stubs. It is checked here only by tests.
* Sixteen accelerators still use the memory-effect model: `arith256mod`,
  `bn_arith256`, `bls_arith384`, `secpadd`, `secpdbl`, the BN254 and BLS12-381 point
  and Fp2 operations, and `blake2bround`. Each needs its operands and results to lie
  in one array, with the parameter block plus array base as configuration. Operands
  living in a workspace that one array can cover need no copying; scattered operands
  would.
* The Pancake memory model must cover the array: `read_bytearray` fails outside the
  program's addressable memory.
