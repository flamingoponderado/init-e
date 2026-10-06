# init-e

A proof challenge: submit RISC-V bytecode and prove that it agrees with the
fixed Pancake guest on the cases specified in [docs/CHALLENGE.md](docs/CHALLENGE.md).
The score is a certified execution step bound, either a natural number or infinity.
Code must fit in the 128 MiB program window.

The assignment includes `guest/src/`, the authoritative literal AST in `Guest/Ast.lean`, and
its initial memory and accelerator FFI semantics. The authoritative source
evaluator is the compiler theorem’s `PanSemStateFiniteExact.semanticsDecls`,
fixed by `InitE/SourceSemantics.lean`. Flapjack is a pinned Lake
dependency from the `riscv-im` branch. The baseline includes a proved bootstrap
and uses compiler correctness to
certify the complete submitted image with score infinity. The verifier script
and submission format are described in [docs/SUBMISSIONS.md](docs/SUBMISSIONS.md);
the standard-axiom baseline has passed the full outside build and proof audit.
The previous pin's cold isolated trusted audit also passed with exactly the three
standard axioms. The compact computation certificates have passed the complete outside build
and standard-axiom audit. Fresh isolated comparator acceptance is pending.
The earlier isolated acceptance used native-computation axioms and is recorded
separately.

Build the challenge and initial submission with `tools/build-lean.sh`; run the
proof audit with `tools/build-lean.sh InitE.Audit`. Build the optional testing
model with `tools/build-lean.sh Guest`. These commands stop after eight hours;
use `tools/build-lean.sh --quick MODULE` for a 10-minute exploratory check.
A timeout means the check is unfinished, not that the proof passed. Candidate testing, toolchain setup,
Docker instructions, and historical results are in [docs/TESTING.md](docs/TESTING.md).
The full EEST procedure is in [docs/EEST-SPIKE.md](docs/EEST-SPIKE.md).
Tests help develop candidates; submitting a solution requires proofs.

This is experimental research code. Equivalence with this guest is not a proof
that the guest implements Ethereum correctly. Evaluate [docs/SOUNDNESS.md](docs/SOUNDNESS.md)
and the [riscv-im-compare README](https://github.com/flamingoponderado/riscv-im-compare#readme)
as well: its comparison of Flapjack's RISC-V model with riscv-zkvm documents
explicit assumptions and remaining gaps that matter for the intended execution platform.

The challenge takes `Guest.guestAst` directly. The Pancake text remains readable
provenance; parser agreement is not required. See
[proof-performance notes](docs/PROOF-PERFORMANCE.md) for scaled measurements and
the remaining standard-axiom verification work.
[Proof reuse measurements](docs/PROOF-REUSE-EXPERIMENT.md) describe the shared
backend label and duplicate-function certificates, including complete export replay timings.
