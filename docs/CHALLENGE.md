# Challenge spec

## Overview

Assumptions

* **(input)** Execution starts with input in input buffer of Zisk (128 MB starting 0x4000_0000)
* **(initial pc)** Execution starts from the fixed program counter 0x8000_0000 (Zisk's `ROM_ADDR`, where Zisk's own program starts after its BIOS)
* **(RAM)** 29 GiB in `[0xa000_0000, 0x7_e000_0000)` (exclusive end, 4 KiB aligned), initially zero outside the public input. Integer registers initially contain zero. Every submission includes its own startup code.
* **(gas)** if the block gas limit parses from the input (by a fixed-position reader, `Guest/GasLimit.lean`), it is at most 200M (formally: `Guest.GasLimit.declaredGasLimit input ≤ 200000000`). The input might not parse; that case fits the assumption, and the conclusion below applies as usual
* **(RISC-V?)** Flapjack's integer RISC-V model on the `riscv-im` branch is used, pinned to `034bb5a1ed0b757082768d5406206bd2f8e31b7c`. Execution starts in machine mode, with identity physical address translation.
  The formal machine setup must enforce `mstatus.MPRV = 3`;
  `isRiscvMachineConfig` alone does not imply this. Address translation in the
  pinned `riscv-im` model is identity by definition. Accelerators are foreign calls with the specifications in `Guest/AccelFfi.lean`, not extra instructions in the integer ISA.

Conclusion

* Let **(output)** be content of `[0xa041_0000, 0xa042_0000)`, 64 KiB in case the submission RISC-V terminates
* **(code size)** the submission must prove that its code is at most 128 MiB (0x0800_0000 bytes, the size of Zisk's ROM window), loaded at the initial pc
* **(functional equivalence)**
  * **original success case**: if the fixed Pancake AST (the same RAM size) terminates normally validating the input under `PanSemStateFiniteExact.semanticsDecls`, the submission RISC-V also terminates with the same output under $K$ steps.
  * **original invalid case**: if the fixed Pancake AST (the same RAM size) terminates normally rejecting the input (or traps for no-OOM reasons) under `PanSemStateFiniteExact.semanticsDecls`, the submission RISC-V also terminates rejecting the input (or traps for no-OOM reasons) under $K$ steps. All failures are treated equal, so terminating rejects and no-OOM traps all correspond.
  * **original diverging case**: if the original Pancake source diverges, OOM-traps, or evaluation failure (`HolBehaviour.fail`), the submission might terminate, trap or diverge freely.

Score is $K \in \mathbb{N} \cup \{ \infty \}$.

The intended initial submission consists of the accelerated guest compiled with Flapjack and the literal score $K = \infty$. Certification uses `InitE.panToTargetCompileSemanticsOraclesRiscVSource`; see the proof obligations and implementation status below.

## Flapjack repin (2026-10-04)

The dependency advanced from `8bd4e6b2786203d1d17cbc8e3d401396f346c85e` to
`7ef58a0e940088c06e6a283bde681c5754fce262`. The intervening commits change
documentation, tests, and CI tooling; changes in the two proof modules are
comments only. Compiler code, theorem statements, source/target semantics,
and dependency/toolchain versions are unchanged. The literal baseline and
its recorded Spike ELF therefore remain the same artifacts.

Validation: `lake build InitE Submission InitECandidate.Proofs.Audit` passed, as did the three
changed Flapjack Lean parity modules and all 10 verifier tests. The trusted
axiom closure still matches exactly the 49-name manifest. Of 1,068 upstream
Python tests, 1,066 passed in the Lake checkout; the remaining two inventory
checks passed when rerun in a checkout outside `.lake`, which their scanner
excludes. Source and ELF hashes match the recorded EEST run; that corpus was
not rerun because the compiler and execution semantics are unchanged.
At repin time isolated verification remained pending the host upgrade.

## Flapjack branch rename and repin (2026-10-05)

The branch was renamed to `riscv-im`. That repin used
`7981f765cdadecf9b2857f326a65bae47371ab15`, advancing from
`7ef58a0e940088c06e6a283bde681c5754fce262`. Only upstream `README.md` and
`docs/SOUNDNESS.md` changed, documenting the comparison with Sail RISC-V.
Compiler code, semantics, theorem statements and toolchain are unchanged;
the submitted byte literals and recorded Spike artifacts remain applicable.
The earlier isolated verification record retains its original revision.

Validation at the new pin: `tools/build-lean.sh InitE.Challenge
InitECandidate.Proofs.MachineWordMemory` passed; all 12 verifier regression tests passed; the
actual Linux isolation probe passed with the new unit settings. The full
baseline certificate has not yet been rechecked during the ongoing
standard-axiom conversion. EEST was not rerun for this documentation-only
upstream change.

## Flapjack ISA alignment repin (2026-10-06)

The dependency now uses `riscv-im` revision
`034bb5a1ed0b757082768d5406206bd2f8e31b7c`, advancing from
`7981f765cdadecf9b2857f326a65bae47371ab15` after PR #14 was merged.
This is a model change: upstream removes RV64 word arithmetic, shifts,
multiplication and division instructions absent from `riscv-zkvm`, retaining
`ADDIW`. It also adds proofs that every compressed instruction decodes as
unknown and cannot step successfully. Compiler passes and the dependency
versions are unchanged. The submitted bytes and source AST are unchanged;
the changed evaluator and encoding models require fresh proof validation.

The old-pin full verifier was stopped at the user's request before complete
comparison or kernel acceptance. Its cold trusted audit had passed with the
three standard axioms. The stopped comparator reached a 103.9 GiB peak with
zero swap; it is recorded as superseded, not an accepted or failed proof.
Historical old-pin evidence does not certify this revision. A fresh full
isolated verifier is running at the new pin with the same resource limits.
All 21 verifier regression tests pass (8.463 seconds). The ten-minute bounded
compatibility build passed all 3,616 jobs, including the challenge,
machine-memory lemmas and upstream `Flapjack.RiscV.L3.Step.NoCompressed`.
Full initial-submission and comparator acceptance at the new pin remain pending.
EEST has not been rerun for this repin; the earlier runtime record remains
associated with its original revision.

Future isolated verification units use up to 16 logical CPUs, a 112 GiB memory
cap with no swap, and an eight-hour runtime limit for each trusted build and
comparator run. Local full builds also stop after eight hours. The revised
proofs now pass the full outside build using only the standard three axioms;
full isolated verification is running.

## Rationales and considerations

**(input)** the input region starts with eight zero metadata bytes, then an eight-byte little-endian blob length, then the blob; but this convention is already taken care of by the functional equivalence.

**(gas)** this allows submission to do anything if declared gas is too big. Current Pancake source allows big block gas limit (needed to pass EEST). Alternative is: if declared block gas limit is too big, either same output as the original Pancake source or diverge. In any case, it's easy to patch the winner to reject too big declared block gas limit. Current statement formulation is simpler than the alternative.

**(code size)** a limit on the code, which each submission proves (it is not an assumption), keeps the submission from encoding a huge lookup table or precomputation in its code, and 128 MiB is the program window Zisk gives (`ROM_ADDR_MAX = ROM_ADDR + 0x0800_0000 - 1` in Zisk's `core/src/mem.rs`; its top 1 MiB is Zisk's float library, not counted here). The program the original Pancake source compiles to is well below it (the guest's `.text` is under 1 MiB).

**(RISC-V?)** The bet is we can prove equivalence of Sail RISC-V and the used interpreter, or failing that we can implement the used interpreter as a zkVM.

**(functional equivalence)** is a way to postpone choosing and using canonical spec. The bet is: any future difference vs the canonical spec will be local enough.

**diverging case**: maybe the submission reduces memory allocation (a good thing), so even when the original Pancake goes OOM trap, the submission might output something. The submission should not be required to spend resources trying to figure out when the original Pancake goes OOM. The bet is: the diverging case is moot because it's provable that the original Pancake source never OOM-traps for a block of at most 200M declared block gas.

**(RAM)** 29GB is rather big. However, this supports our bet that the original Pancake source does not go OOM for blocks under declared 200M block gas. The bet here is: we'll be able to prove reasonable a memory bound for the winner (it's probable; the winner won't allocate unnecessarily, and the allocation is probably limited by gas.) I thought about making the whole 2^64 addresses available but that might lead to unrealistically big lookup tables or some weird data structure, so I'd rather stay with 29GB.

## Trust Boundary

* We need to separately prove that the original Pancake source does not go OOM for blocks with at most declared 200M block gas.
* We need to separately prove that the RISC-V semantics in the challenge refines to the RISC-V implemented by zkVMs.
* The verifier permits only `propext`, `Classical.choice`, and `Quot.sound`.
  Native-computation axioms are rejected. The earlier accepted baseline used
  49 axioms. Its finite checks have been replaced with kernel-checked proofs,
  and the full outside build passes. Isolated acceptance of these revised
  proofs remains pending; the historical acceptance does not certify them.


## Repository contract and submissions

The challenge fixes the literal Pancake AST `Guest.guestAst` in
`Guest/Ast.lean`, its initial state and FFI semantics, and the pinned Flapjack
RISC-V semantics. The Pancake source in `guest/src/` and preprocessed text
`Guest/guest.pp.pnk` are retained as readable provenance. The AST is
authoritative: parser agreement is not a challenge or certificate premise. A provenance
comment in `Guest/Ast.lean` records the generation command and permanent links
to the original source, historical parser-agreement proof, and the baseline
proof with its former 49-axiom manifest. The authoritative source behavior is
`InitE.sourceBehaviour` in `InitE/SourceSemantics.lean`, which calls
`PanSemStateFiniteExact.semanticsDecls`, exactly the evaluator in
`panToTargetCompileSemanticsRiscVSource`. `Guest.runGuestStepped` remains an optional
executable testing model and is not the challenge specification. A participant supplies RISC-V bytes as
Lean `List (BitVec 8)` literals, a literal score in `InitE.NatE` (`.finite n`
or `.infinity`), and proofs of code admission and functional equivalence.
Compiler-generated data must also be accounted for; an ELF or a successful
Spike run is not a proof submission. Solvers may use the compiler in their
proofs but may not replace the challenge's semantics or assume their own
correctness conclusion.

The formal contract is `InitE.Certificate` in `InitE/Challenge.lean`.
`InitE.Submission` contains the ROM bytes, score and foreign-call dispatch
metadata; the evaluator, host oracle, machine mode, zeroed registers and RAM
permissions are fixed by the challenge. Admission binds every dispatch slot
to the loaded ROM and checks alignment, distinct entry points and valid
shared-memory call metadata. Participants cannot choose an arbitrary machine
configuration or interference oracle.

`InitE/Observations.lean` observes the public output by replaying the fixed
host oracle over the recorded calls. `InitE/OracleReplay.lean` proves that
this replay equals the actual final host memory for every target execution. Successful validation is normal halt
with the acceptance byte at output offset 32 equal to one; its entire 64 KiB
output must match. All covered rejection outcomes form the same class.

Infinity removes the uniform finite step ceiling. It still requires a finite
terminating execution in every covered case: `InitE.NatE.within_infinity_iff`
proves that termination within infinity is equivalent to existence of a finite
termination witness. A diverging execution does not satisfy that condition. The finite ceiling
is measured in `evaluateTargetHOL` clock steps: ordinary target transitions
and foreign-call transitions each consume a step, including the final stop
transition. Spike's hardware instruction count is a testing metric, not a
certificate of this clock bound.

Tests are optional tools for evaluating candidate programs before proving them.
The main challenge is proof checking, not reproducing an EEST score. Testing
instructions and historical results are maintained in `docs/TESTING.md` and
`docs/EEST-SPIKE.md`.

## Disjoint memory layout

All intervals below have exclusive upper endpoints. The source ordinary-memory
region begins at `@base = 0xa1000000`. Unlike the old layout, scratch lies
**above** `@base`, so it belongs to the heap-shaped domain required by the
compiler theorem. The bump allocator starts after scratch, rather than at
`@base`, so persistent allocations cannot overwrite temporary frame data.

| Region | Start | End |
| --- | --- | --- |
| Input including 16-byte framing | `0x40000000` | `0x48000000` |
| Submitted ROM window | `0x80000000` | `0x88000000` |
| Available RAM | `0xa0000000` | `0x7e0000000` |
| Public output observation | `0xa0410000` | `0xa0420000` |
| Reserved Pancake startup page | `0xa1000000` | `0xa1001000` |
| Scratch and EVM frame memory | `0xa1001000` | `0xa1c00000` |
| Persistent bump allocation | `0xa1c00000` | `0x7defffd18` |
| 93 scalar globals (744 bytes) | `0x7defffd18` | `0x7df000000` |
| Machine stack (16 MiB) | `0x7df000000` | `0x7e0000000` |

The RAM endpoint and heap/stack split are 4 KiB aligned. The allocation ceiling
is word aligned and excludes globals. `InitE/Parameters.lean` proves region
ordering and alignment. `guest/src/config.h`, `guest/runtime/start.S`, and the
Spike driver use this layout. The input and output assumptions follow the
challenge rather than the separate ZisK project's current memory map.

The previous scratch-below-`@base` proof obstruction is recorded in
[stateless-pancaketh issue #151](https://github.com/flamingoponderado/stateless-pancaketh/issues/151).
The solution is implemented and validated in **init-e**; stateless-pancaketh
is a separate ZisK-targeted project.

## Compiler proof obligations

The upstream `panToTargetCompileSemantics` theorem is reused through
`InitE.panToTargetCompileSemanticsOraclesRiscVSource`. The compiler input is
`mainFirstHOL` of the fixed declarations; its conclusion concerns those
declarations in their original order. The baseline uses an explicit allocation
tape, and the compiler validates every proposed coloring. Its artifact API is
`compileProgAsmFast`; its stack premise uses `compileProgMaxAsmExecutable`,
the evaluator linked to compiler correctness. No text-parser agreement is
required.

Compiler correctness permits resource-limit termination unless its precision
flag holds. The baseline proves a finite compiler stack depth of at most
**7,480 words (59,840 bytes)** from the fixed program's acyclic call graph and
checked frame sizes. `submission/InitECandidate/Proofs/StackAnalysis/Closed.lean` certifies the independent
optimized literals, and `submission/InitECandidate/Proofs/SourceStackCertificate.lean` links them to the
checked optimizer and the compiler evaluator. This concrete linkage passes
with the three standard axioms. The measured exact depth of 538 words is only
diagnostic. `submission/InitECandidate/Proofs/OracleBaselineCorrectness.lean` proves the strict inequality
against `readLimits`, including compiler reservation margins, so the baseline
can remove the resource-limit relaxation.

The assumptions are classified as follows:

| Owner | Obligations |
| --- | --- |
| Challenge source | Existence of `main`; good Pancake operations; distinct parameter and function names; exception-ID bound; globals shape/size and allocatability; initial empty declaration maps; source memory domain and allocation ceiling. These must be proved for the fixed source, rather than made assumptions on inputs. |
| Baseline compiler proof | Successful compilation; literal-byte/artifact equality; bitmap and data installation; `panInstalled`; exact initial-register and memory relation; FFI return/writeback and shared-memory metadata; finite logical stack bound and strict `readLimits` inequality. Other submissions need only their own proof of the challenge property. |
| Given environment | The specified input and output layout; declared gas limit at most 200M; access to the disjoint RAM range; initial machine mode and identity translation; the fixed foreign-call oracle and its memory-access permissions. |

The first five words at `@base` are fixed bookkeeping values, rather than
zero. The remaining ordinary-memory cells start at zero. `Guest/Bookkeeping.lean`
records the baseline's bitmap start/end and code-buffer start/end pointers;
`guest/runtime/start.S` installs those words before entering the compiled
Pancake code. The scratch and persistent allocators cannot touch their reserved
page. These values are part of the challenge's fixed source initial state,
not arbitrary values supplied by a solver. A complete baseline certificate
must establish their `panInstalled` relation. `InitE/SourceSemantics.lean` initializes that state directly in the compiler
theorem's finite-map carrier. Declaration maps begin empty, ordinary memory
uses the compiler's aligned word-cell domain, and the shared domain consists
of aligned cells in the input/output arenas. Byte accesses keep their exact
byte address in the oracle payload. The oracle reuses the byte-level host and
accelerator specifications but makes `@halt` and `@trap` terminal. Their final
events record the call name and configuration; `FFI_failed` on a terminal
`halt` is a host stop signal, not an Ethereum validation rejection. Trap
configuration length is the source's diagnostic trap code; memory-exhaustion
codes 1, 6 and 7 are outside the covered cases. No equivalence proof to the
optional stepped testing evaluator is required.

## Implementation status

The challenge and initial submission are implemented. The previous version
passed isolated verification with native-computation axioms. The current
AST-based, standard-axiom version passes the full outside build and proof
audit. The disk-spooling retry also passed its cold isolated trusted audit with
exactly the three standard axioms. That old-pin comparator was stopped at the
user's request; fresh verification of the ISA-alignment repin remains pending. `lake build` builds the fixed challenge and original submission;
`lake build InitECandidate.Proofs.Audit` prints the proof dependencies. The initial certificate
is `InitE.Challenge.certificate` in `submission/Solution.lean`. It has no
assumed bootstrap execution, installed poststate, stack bound, compiler
installation or functional-equivalence premise. The claimed score is the
literal `.infinity`, and admission proves the hard code-size limit.

The full EEST run for the modified guest passed all 33,614 records (33,605 full
matches and 9 expected malformed rejects), with zero failures or errors.
Source/ELF hashes and the command are recorded in `docs/EEST-SPIKE.md` and
`BASELINE.json`. Tests remain separate from proof submissions.

The obsolete CakeML, evm-asm, and Flapjack submodule registrations were removed.
Flapjack is a pinned Lake dependency; EEST fixture fetching and conversion are
vendored under `tools/`. Spike remains a testing submodule. Optional Python
oracle tests can use a separate `work/execution-specs` checkout.

The submitted baseline image contains **950,336 bytes**, including the
208-byte bootstrap, runtime stubs, native code, alignment padding and the
ROM initializer for compiler data. Its native code contains 904,056 bytes;
the 4,613 bitmap words contain 36,904 bytes. `submission/InitECandidate/Proofs/ArtifactFacts.lean` checks
that the native and bitmap literals equal the pinned compiler's artifact.
The complete loaded ROM image is charged to the code-size limit.

The bootstrap copies 36,928 bytes from ROM at `0x800df000` to RAM at
`0xa0020000`, installs the three compiler ABI cells and the five source
bookkeeping words, initializes the compiler's heap/stack registers, and
jumps to native code at `0x80001190`. It executes 23,127 RISC-V instructions;
this count is distinct from the full formal evaluator's clock. The challenge
supplies zero ordinary RAM and zero integer registers at `0x80000000`.
The copy includes zero ABI initializer cells; the following stores establish
the bookkeeping values. Scratch, persistent heap, globals and stack remain
zero before native execution, as proved in `submission/InitECandidate/Proofs/BootstrapZeroing.lean`.
The complete EEST run was repeated successfully with this zero-RAM startup.

The bootstrap proof checks its actual bytes against Flapjack's verified
instruction encoder, proves the copy-loop invariant and all tail instruction
checks, and composes them through the actual target evaluator.
`InitECandidate.Proofs.BootstrapTrace.full_evaluator` reaches an installed native-entry state
without assuming that execution. `submission/InitECandidate/Proofs/PanInstallation.lean` proves the
concrete `panInstalled` relation, including source headers, source memory,
compiler data and bitmap separation.

The static source facts are checked in `InitE/SourceCodeFacts.lean`.
`submission/InitECandidate/Proofs/SourceStackCertificate.lean` links the checked optimizer outputs to the
conservative stack certificate; the concrete linkage passes with the three
standard axioms.
`submission/InitECandidate/Proofs/OracleBaselineCorrectness.lean` proves the strict bound against actual
compiler reservation margins.
`submission/InitECandidate/Proofs/AllocationFacts.lean` proves that the fixed source's globals are
allocatable and disjoint from ordinary memory. `submission/InitECandidate/Proofs/BaselineCorrectness.lean`
uses the general compiler theorem through the validated allocation-tape
specialization and removes its resource-limit relaxation. `submission/InitECandidate/Proofs/BaselineArtifact.lean` establishes successful compilation
and the full artifact. `submission/InitECandidate/Proofs/FullBaseline.lean` combines compiler correctness
with the proved startup, obtaining finite termination and identical outcomes
and events for every terminating source execution. `InitE/TargetBudget.lean`
proves the infinity equivalence using the actual evaluator's Halt witness.

The current verifier allowlist contains only the three standard Lean axioms.
The previous standard-axiom proof version passed the full outside Lake build
and axiom audit. Compact computation certificates are now being installed;
the latest isolated run was stopped at the user’s request, and fresh full
integration and acceptance remain pending.
Metaprogrammed tactics and simplification procedures may construct proofs,
but Lean's kernel must check them without additional axioms.

The sig.golf-style verifier script, exact axiom manifest and submission format
are documented in `docs/SUBMISSIONS.md`. Its policy and staging tests pass;
the pinned comparator's own regression suite also passes. **End-to-end isolated
acceptance passed after the host upgrade** on systemd 259.5; the retained run is
`verifier/runs/host-upgrade-baseline-5`, with trusted contract hash
`540dcf0e0a2c9349597090a38dbfe988360d5faec7a2e190663da55742359218`.
The complete sandbox checks and comparator kernel recheck passed. The trusted
build used a 24 GiB cap; the comparator cap was raised to 64 GiB during the run,
and the script now uses 112 GiB throughout. This acceptance includes the exact
49-name native-computation axiom manifest. Those native checks have since been
replaced with proofs using only standard axioms. That revised outside build
passed; its isolated verification has been superseded by compact-certificate
work. The guest, challenge semantics and Spike results are unchanged.

## Standard-axiom certification

The authoritative source contract is the literal `Guest.guestAst`. Its header
records how it was generated and permanently links to the original source and
historical 49-axiom proof. `Guest.AstParse` is removed. Good-code, distinct-name,
allocation and stack premises remain required and are proved for the baseline.

The exact Pancake-to-Word frontend, all 826 Word optimizer results, raw-call
lowering, allocation lowering, removal and naming have kernel-checked
aggregate certificates. Both complete target encoding passes and their label
maps also pass with standard axioms.
The concrete stack linkage, compiler-correctness specialization, all backend
aggregates, literal-byte agreement, metadata and source-to-artifact composition
now pass direct kernel checks with only `propext`, `Classical.choice`, and
`Quot.sound`. The previous combined Lake build, submission and axiom audit
passed under the final resource caps. The compact-certificate replacement
requires a fresh complete build. Admission metadata uses small checked
literal tables and ordinary kernel computation. Full isolated verification
remains pending: the original buffered comparator export failed with OOM.
The disk-spooling retry passed its cold trusted audit in 2h 38m 23s with a
110.0 GiB memory peak and zero swap; its comparator was later stopped at the
user's request for the new pin. Fresh isolated acceptance remains pending. The measured
outside continuation reused earlier stages and is not a cold build.

Large computations use separately checked intermediate definitions and explicit
equations. Closed compiler-pass computations now submit compact reflexivity
terms through `InitECandidate.Proofs.CompactComputation.kernel_rfl`; the kernel computes the
conversion and rejects an incorrect proposed result. Symbolic frontend steps
and cached checkpoint outputs use shared proved evaluator or equation bridges
before reflexivity. The Loop shrink/fixed-point evaluator has a structurally
bounded equivalent implementation, with a generic equality proof to the
compiler’s original evaluator. The production-to-HOL codecs, Globals compiler
and SSA traversal likewise have universally proved structural equivalents.
These change proof computation only: existing source data, stage conclusions,
bytecode, score and memory layout remain unchanged. No additional axioms or
skipped kernel checks are introduced. Native generation
only proposes values; kernel proofs establish every equation used by the
certificate. These changes preserve the AST, evaluator, memory layout,
submitted byte literals and infinity score. Benchmark fixtures, exact timings,
cache qualifications and development checkpoints are recorded in
[PROOF-PERFORMANCE.md](PROOF-PERFORMANCE.md), rather than treated as challenge
premises.

Verification uses a 112 GiB memory cap, zero swap, 16 logical CPUs and at most
16 active Lean compiler processes. Each build/comparison step has an eight-hour
runtime limit. A trusted project-local launcher admits compilers before their
proof environments load, preserving the original compiler, githash and Lake
cache traces. Both launcher sources are staged and hashed with the trusted
contract. Bounded logs retain their final output, including the axiom manifest.
The pinned comparator has a hash-checked transport patch that streams exports
into private disk files before parsing. The spool directory is outside the
candidate’s writable Lake cache; tmpfs and ramfs are rejected. Declaration
comparison, both axiom closures, primitive checks and full kernel replay are
retained. Only their successful completion establishes acceptance.

The standalone challenge and compiler-correctness modules pass outside
`PrivatePIDs` under these caps; the complete challenge/submission build and
axiom audit must pass before the full isolated verifier is run. Only a complete
comparator acceptance with the exact three-name manifest counts as current
verification. The historical 49-axiom acceptance described above is separate.
Commands, isolation requirements and the submission format are in
[SUBMISSIONS.md](SUBMISSIONS.md); `BASELINE.json` records current status.


### Challenge and initial-submission proof boundary

The challenge's fixed Pancake AST (`Guest/Ast.lean`), source semantics, memory
layout, machine environment, observations and certificate statement remain in
`Guest/` and `InitE/`. Independent facts about the fixed source also remain
there; they do not import the initial submission.

The initial submission owns its compiler configuration, generated pass
certificates, compiled stack analysis, image and bitmap facts, bootstrap and
installation proofs, and compiler-correctness application. These modules live
under `submission/InitECandidate/Proofs/`. Their module names begin with
`InitECandidate.Proofs`; existing public theorem names in `InitE` are retained
where convenient. A declaration's namespace does not make its proof trusted.
Generation-only label-position CSVs and their notes live in `tools/target-encoding/`;
generation drivers live in `Tools/InitialSubmissionGenerators/`.
Neither is part of the submitted proof package. The verifier freezes and audits only the challenge before compiling the
submission. It no longer freezes a separate baseline bytecode namespace.

Source-package limits are 65,536 filesystem entries, 16 MiB per file and 4 GiB
overall, to accommodate the initial submission's generated certificates.
The proved 128 MiB program-size limit is unchanged.
