# A bounded workflow for speeding up Lean comparator replay

This guide is for an agent making a small, verifiable performance change in this
repository. Work on one proof fragment at a time. Preserve the challenge and
measure the comparator, not just Lean elaboration or proof-file size.

The successful example below improves comparison of two image obligations from
107.03 to 38.09 seconds. **That is a fragment result, not a project-wide speedup.**
Many compiler-stage proofs already use compact checking. Applying the same
transformation everywhere is neither necessary nor known to be beneficial.

## Constraints to carry through every experiment

- Leave the fixed challenge statement, permitted axioms, and verifier checks
  unchanged. For proof-only experiments, also preserve submission theorem
  statements and program/data literals.
- Never replace a solution proof with `sorry`, a new axiom, or an unchecked
  native-computation assertion. Native code may propose a value; an ordinary
  kernel-checked proof must establish its relationship to the specification.
- Use short fragments and an explicit timeout. Start with one theorem or a
  small group; 180 seconds per command is the image harness's default.
- Do not launch the full comparator as an exploratory test. Obtain a separate
  instruction before undertaking a full run under this workflow.
- A timeout, interrupted process, or failed proof is an unfinished experiment.
  Preserve its log and reduce the fragment or change the approach.
- Preserve other work in the checkout. Do not delete caches or run broad
  replacement scripts to make a small experiment easier.

The shell examples use `rtk`, as required by this workspace's instructions.

## Know which cost you are reducing

| Measurement | What it tells you |
| --- | --- |
| Proof build | Import, elaboration, and local kernel-checking cost; report whether dependencies were cached. |
| Export generation | Cost of serializing the used declaration closure. |
| Export bytes | Input size for the independent checker; not a replay-time measurement. |
| Parse time | Time to reconstruct exported declarations. |
| Statement/axiom checks | Comparator checks before kernel replay. |
| Kernel replay | Time spent independently checking the exported declarations. |
| Comparator process wall time | Combined cost, including startup; the main acceptance metric here. |

A tiny proof can ask the kernel to perform an enormous computation. Conversely,
a computation that builds quickly can produce a large proof that is expensive
to export, parse, inspect, and replay. Record CPU time and peak memory as well.

## 1. Choose an actual bottleneck

Start with [PROOF-PERFORMANCE.md](PROOF-PERFORMANCE.md) and the existing
[certificate benchmarks](../tools/certificate-bench). Check the current source;
older notes may describe proofs that have already been replaced.

Inspect a narrow family rather than printing every generated file:

```sh
rtk git status --short
rtk rg -n 'decide_cbv|kernel_rfl' submission/InitECandidate/Proofs/BitmapImageFacts.lean
rtk proxy cat submission/InitECandidate/Proofs/BootstrapLastWord.lean
```

Useful candidates include large compiled proof modules, repeated list scans,
and repeated closed computations. A large `.olean` is only a clue: distinguish
data from proof terms, and confirm that the declaration is used by the current
submission. This tree also contains old generated proof layouts that are not
the active dependency path.

Write down a concrete hypothesis before editing. For example:

> The final bitmap-word proof constructs a large `decide_cbv` certificate and
> scans the same suffix prefix for each of eight bytes. A proved chunk-selection
> lemma plus compact checking may reduce both proof size and repeated work.

Do not assume every `cbv` occurrence is a slow proof. Many occurrences are
options or attributes; some proof uses are necessary for symbolic contexts.

## 2. Understand the compact-checking pattern

[CompactComputation.lean](../submission/InitECandidate/Proofs/CompactComputation.lean)
defines `kernel_rfl`. It proposes an `Eq.refl` proof without first doing the
same conversion check in the elaborator. The kernel still checks the proposed
term against the theorem's declared type. Its `check := false` argument disables
that preliminary tactic check, **not kernel verification**.

For a closed equality whose sides compute to the same value, try:

```lean
import InitECandidate.Proofs.CompactComputation

example : (List.range 8).length = 8 := by
  kernel_rfl
```

For expensive definitions, first apply a theorem that exposes a cheaper but
provably equal computation. The current production example is:

```lean
theorem final_bitmap_word_image :
    sourceReadWord (resultWidth := 64) false InitE.initialMemory 0x800e8038 8 =
      InitECandidate.bitmaps.getLast?.getD 0 := by
  simp only [sourceReadWord, ImageComputation.initialMemory_eq,
    ImageComputation.suffix_getElem?_eq]
  kernel_rfl
```

See [ImageComputation.lean](../submission/InitECandidate/Proofs/ImageComputation.lean)
for the helper proof. It establishes the suffix split and the leading length
once. Lookups in the final chunk then avoid traversing the preceding 40 KiB.
The concrete length is proved from the literals; it is not an assumption.

See [BitmapImageFacts.lean](../submission/InitECandidate/Proofs/BitmapImageFacts.lean)
for the second pattern: retain the proved prefix-skipping and linear bitmap
conversion rewrites, then replace the final `decide_cbv` with `kernel_rfl`.

Do not mechanically replace every tactic. A symbolic goal may require equation
lemmas. Opaque checkpoints may intentionally prevent huge terms from unfolding.
Removing those barriers can increase computation or make reflexivity fail.
If a compact proof times out, inspect the residual computation rather than
merely increasing the timeout or recursion limit.

## 3. Keep a real before/after control

Use two versions of the same theorem statement on identical inputs. Freeze the
old source or exports before changing production files. An alias to a production
theorem that you later overwrite is not a reliable baseline.

Include all new helper proofs, caches, data definitions, and agreement proofs
in the exported dependency closure. When several obligations share prerequisites,
also compare a combined export so those prerequisites are counted once.

For a new family, adapt an existing harness to its exact proof shape. The image
runner extracts specific theorem bodies and reconstructs their original
`decide_cbv` proofs. It is not a general rewrite tool for arbitrary Lean files.

## 4. Build and compare a bounded fragment

With the pinned dependencies and verifier tools already installed, build the
image modules using the existing bounded compiler wrapper:

```sh
rtk proxy env LAKE_ARTIFACT_CACHE=false timeout --kill-after=10s 180 \
  python3 tools/limited-lake.py --work-dir .lake/lean-limit --slots 16 -- \
  lake build InitECandidate.Proofs.BootstrapLastWord InitECandidate.Proofs.BitmapImageFacts
```

This was a warm build in the recorded experiment. A cold dependency build may
exceed the cap; do not report that as a failure of the local proof optimization.
Do not repin or rebuild unrelated dependencies merely to reproduce a warm result.

Start with one family and one trial, using a fresh work directory:

```sh
rtk proxy python3 tools/certificate-bench/image.py \
  --work work/lean-perf/image-word-probe --family word --trials 1 --timeout 180
```

If it passes, compare both obligations with repeated measurements:

```sh
rtk proxy python3 tools/certificate-bench/image.py \
  --work work/lean-perf/image-pair-confirmation --family both --trials 2 --timeout 180
```

The baseline metadata proof has its own one-theorem runner. It reconstructs the
former `decide_cbv` proof as the control, so it remains useful after the compact
proof is installed:

```sh
rtk proxy python3 tools/certificate-bench/metadata.py \
  --work work/lean-perf/metadata-confirmation --trials 2 --timeout 180
```

Choose unused directory names. The runner refuses to overwrite earlier results.
It requires the exporter and comparator libraries under `verifier/.tools`.
Missing tools are a setup issue; consult the existing verifier setup instructions.

[CompareReplay.lean](../tools/certificate-bench/CompareReplay.lean) uses the
comparator's actual statement/definition comparison, primitive comparisons,
axiom audit, and independent `Environment.replay`. Require exit status zero and
`comparator=accepted`. `Replay.lean` alone only performs parsing and kernel replay;
it does not establish that the statement matches a separate challenge fixture.

The generated **fragment challenge fixture** uses theorem holes (`by sorry`),
matching the comparator's required declaration kind. Those holes are only
specifications to compare against. Neither solution variant may depend on
`sorryAx`. This does not authorize adding holes to repository proofs or changing
the real challenge. The allowed solution axioms remain `propext`, `Quot.sound`,
and `Classical.choice`; the image examples use only the first two.

## 5. Decide from measurements

After a successful smoke test, use at least two trials and alternate order
(old/new, then new/old). Run timed comparisons sequentially. Do not edit helpers
or rebuild their dependencies while timing them. Investigate small or unstable
differences before retaining a change.

For the recorded combined image experiment:

| Metric | Original | Compact |
| --- | ---: | ---: |
| Median comparator wall time | 107.03 s | 38.09 s |
| Median kernel replay | 60.66 s | 31.22 s |
| Solution export | 279.75 MB | 29.55 MB |
| Proof build, one run with common imports built | 114.26 s | 5.65 s |

The updated shared helper separately built in 4.8 seconds. Its used dependency
closure was included in replay. The comparator improvement is **2.81× for these
two obligations**. Source hashes, timings, memory, and scope are recorded in
[image-results.json](../tools/certificate-bench/image-results.json).

Several plausible alternatives did not justify rollout:

| Experiment | Observed kernel replay | Decision |
| --- | --- | --- |
| Shared sequence/leaf lemmas on 256 dead-code checkpoints | 842 → 813 ms | Small gain; not retained. |
| Shared encoding table on 3,277 real assembly lines | 1,462 → 2,147 ms | Slower; rejected. |
| Shared pipeline composition theorem on function 79 | 28.491 → 28.521 s | No useful gain. |
| Intermediate AST pruning on function 79, earlier experiment | About 3.6 s in either version | Smaller exports alone did not improve replay. |

Therefore, neither fewer declarations, more caching, nor shorter proof text is
an acceptance criterion. The measured comparator cost must improve without an
unacceptable build or memory regression. Include helper setup costs explicitly.

## 6. Retain only validated changes

Before committing:

1. Compare old and new public theorem statements. Check the diff for unintended
   challenge, bytecode, source-program, toolchain, or verifier changes.
2. Build the edited modules and a small set of their immediate consumers. Do not
   silently broaden this into a full rebuild or whole-proof comparator run.
3. Confirm complete-closure comparison and permitted axiom checks passed.
4. Save a concise report and portable measurements outside ignored `work/`.
   Keep raw generated fixtures and logs in their experiment directory.
5. If a generator owns the edited proof, preserve the change in that generator
   or its established postprocessing step before claiming a durable rollout.

For this example, the edited-module build passed 4,115 jobs and the selected
bootstrap/bitmap-installation consumer build passed 4,108 jobs, mostly cached.
These counts are not counts of newly compiled files or full-verifier acceptance.

Report the tested scope, before/after wall time, helper costs, axiom closure,
and remaining uncertainty. Do not multiply a fragment speedup across the
project: proof families differ, shared dependencies overlap, and many expensive
proofs already use compact checking. Whole-submission runtime remains unmeasured
by this process.

## When an experiment gets stuck

| Symptom | Next action |
| --- | --- |
| `unknown tactic kernel_rfl` | Import `InitECandidate.Proofs.CompactComputation` in that module. |
| Kernel rejects the proposed equality | Inspect the exact residual goal and helper hypotheses. Keep all kernel checks enabled. |
| Compact checking exceeds the cap | Shrink the fragment; look for repeated scans or a needed checkpoint. |
| Export includes too much unrelated work | Inspect which declarations the target actually uses; choose a smaller target. |
| Comparator reports a declaration-kind mismatch | Use a theorem placeholder for the fragment challenge and a theorem proof for the solution. |
| Axiom audit fails | Find the unexpected dependency. Do not expand the permitted axiom list. |
| Only export size improves | Record the size result; do not claim a comparator speedup. |
| Results vary with order or background load | Remove avoidable contention and repeat the same frozen variants. |

If several bounded attempts fail, record what was tried and select another
proof family. A well-documented rejected approach is more useful than an
unbounded run with no result.
