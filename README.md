# init-e

A proof challenge: submit RISC-V bytecode and prove that it agrees with the
fixed Pancake guest on the cases specified in [docs/CHALLENGE.md](docs/CHALLENGE.md).
The score is a certified execution step bound, either a natural number or infinity.
Code must fit in the 128 MiB program window.

The assignment includes `guest/src/`, the checked AST in `Guest/Ast.lean`, and
its initial memory and accelerator FFI semantics. The authoritative source
evaluator is the compiler theorem’s `PanSemStateFiniteExact.semanticsDecls`,
fixed by `InitE/SourceSemantics.lean`. Flapjack is a pinned Lake
dependency from the `riscv-mi` branch. The baseline includes a proved bootstrap
and uses compiler correctness to
certify the complete submitted image with score infinity. The verifier script
and submission format are described in [docs/SUBMISSIONS.md](docs/SUBMISSIONS.md);
end-to-end isolated verification is deferred to the upgraded host.

Build the challenge and initial submission with `lake build`; run the proof
audit with `lake build InitE.Audit`. Build the optional testing model with
`lake build Guest`. Candidate testing, toolchain setup,
Docker instructions, and historical results are in [docs/TESTING.md](docs/TESTING.md).
The full EEST procedure is in [docs/EEST-SPIKE.md](docs/EEST-SPIKE.md).
Tests help develop candidates; submitting a solution requires proofs.

This is experimental research code. Equivalence with this guest is not a proof
that the guest implements Ethereum correctly. See the challenge's trust boundary.
