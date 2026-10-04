# Submitting a solution

Submit a directory containing `Solution.lean`, `claim.json`, and optional Lean
helper modules beneath `InitECandidate/`. Supply RISC-V bytes as `List (BitVec 8)`
literals; large images can concatenate literal chunks. The checked submission
includes the complete ROM image, bootstrap, data and padding.

`claim.json` contains exactly one field:

```json
{"K":"infinity"}
```

For a finite score, use a nonnegative JSON integer, such as `{"K":12345}`.
Infinity requires an actual finite execution for each covered input; it does
not allow target divergence. The certificate also proves the hard code-size
limit and the dispatch-layout admission conditions.

`Solution.lean` must define these declarations:

```lean
import InitE

namespace InitE.Challenge

-- Fill in all fields, including the submitted literal ROM and FFI layout.
noncomputable def submission : InitE.Submission := ...

-- Use exactly .infinity or .finite N, matching claim.json.
def claimedScore : InitE.NatE := .infinity

theorem certificate : InitE.Certificate submission claimedScore := by
  ...

end InitE.Challenge
```

The original submission in `submission/` uses `InitE.baselineSubmission` and
reuses the proved bootstrap and pinned Flapjack compiler-correctness theorem.
Its underlying ROM is assembled from committed literal modules. New solutions
can define their own submission and prove the same fixed certificate.

Tests are optional development aids, documented in [TESTING.md](TESTING.md)
and [EEST-SPIKE.md](EEST-SPIKE.md). Passing them does not replace the certificate.

## Local checks

From the `init-e` directory:

```sh
python3 verifier/check_submission.py submission
python3 verifier/verify.py --local submission --structural-only
python3 -m unittest discover -s verifier/tests -v
```

These validate the file tree, imports and claim. The result `structural_pass`
means that no proof verification was performed. Files must be ordinary UTF-8
Lean sources; symlinks, special files and alternate module headers are refused.
The source/proof package limits are 4,096 entries, 8 MiB per file and 2 GiB
in total. Shard large literal images across modules. These transport limits are
separate from the challenge's 128 MiB ROM limit. Only trusted
`InitE`/`Guest` modules, the pinned proof libraries, and submitted helper modules
may be imported.

## Isolated proof verification

Install the pinned tools, then run the isolated checker:

```sh
verifier/setup_tools.sh
python3 verifier/verify.py --local submission --work verifier/runs/baseline
```

The work directory must not exist. The checker freezes the submission before
compilation and reports the trusted contract's SHA-256 fingerprint, exact
permitted axioms and log paths. It uses the sig.golf verifier pattern and the
[pinned Lean comparator](https://github.com/leanprover/comparator/tree/c0c5a52d2aff92b457c3e5ed4a68c1ebc5795809):
it compares the certificate against an independently built trusted challenge,
checks the submission definition's type and safety, audits axiom dependencies,
and replays the exported solution in Lean's kernel.

Baseline literal modules are copied to an immutable `InitEBaselineCandidate`
namespace in the checking workspace. Trusted baseline references are rewritten
to that namespace. Submitted `InitECandidate` modules therefore cannot change
the baseline code or its precomputed facts.

The trusted baseline is built before any candidate Lean is compiled. Its exact
axiom names are collected directly from Lean's environment; pretty-printed
names are not parsed. The allowlist contains the three standard axioms
`propext`, `Quot.sound`, and `Classical.choice`, plus the exact native computation
facts used by the fixed baseline. Comparator also compares each permitted
axiom's proposition and referenced declarations against the trusted export.
The audit must exactly match the checked-in `verifier/trusted-axioms.json`
closure, including raw private names and both fixed `native_decide` and
`bv_decide` facts. A changed trusted closure fails closed and requires review
of that fixed manifest. There is no wildcard permission for candidate facts. New
native-generated axioms are rejected. Proof methods that generate no additional
axioms remain available.

Proof verification requires unprivileged Linux, Landlock ABI 3 or newer, a
working systemd user bus, and systemd support for the mandatory unit properties,
including `PrivatePIDs`. Networking, signals to other processes, host devices,
shared memory and the host PID namespace are isolated; only the build cache is
writable. Missing isolation makes the checker stop before candidate compilation.
A run reports `verified` only after comparator accepts the exported proof.

On the development host used for this change, systemd rejects
`PrivatePIDs=yes`; explicit user/PID namespace alternatives are also denied.
The toolchain and comparator regression suite pass, but an end-to-end isolated
baseline acceptance has not been established on that host. The isolated run
is deferred until the planned host upgrade, after init-e and the other ongoing
project are finished. Use the setup and verification commands above on the
compatible host. Structural or Lean build success must not be described as
isolated verification.
