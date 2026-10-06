# Reusing checked computations in the guest certificates

Comparator kernel replay is the primary measure. Proof build time must not get
worse; export size is secondary. A smaller outer proof is not sufficient: each
experiment exports and replays the complete dependency closure.

## Backend labels: production rollout

The first target encoding pass already has a checked successful-result equation.
Flapjack's `encLinesAgain_sectionLabels` proves that such a pass preserves section
labels at the same starting position. `TargetChecks/LabelReuse.lean` converts the
accumulator encoder equation to that theorem's simple-encoder premise once, by a
general proof. Each eligible second label certificate then reuses its first-pass
encoding and label certificates, and checks only the short label-list agreement.

There are **537 eligible functions**: identical starting positions and a successful
first encoding pass. The other 295 certificates retain their existing proofs.
Every original theorem statement and all guest/bytecode literals are unchanged.
A position change is not assumed harmless: global `labels0` and `labels1` differ.

Three-trial medians from real functions, with both first-pass prerequisites
included in **both** exported certificates:

| Function | Direct proof build | Reused proof build | Direct kernel replay | Reused kernel replay |
| --- | ---: | ---: | ---: | ---: |
| 79 | 0.839 s | 0.806 s | 301 ms | 294 ms |
| 461 | 1.386 s | 0.801 s | 1,536 ms | 1,462 ms |

Function 79's small replay difference should not be treated as a reliable speedup.
Function 461 gives a modest replay improvement and a substantial build improvement.
The shared helper adds 43 declarations and approximately 378 KB to these isolated
exports; that cost is paid once when multiple functions share an export. A combined export of functions 79, 461, 233, 231 and 240 gives three-trial
median kernel replay **3.632 s → 3.541 s** (about 2.5%). Median total process
time is essentially unchanged: **6.090 s → 6.072 s**. Parsing grows slightly
with the shared theorem closure; export size is 13,621,847 → 14,004,796 bytes.
This is a modest gain, not evidence of a large full-solution speedup. Full
solution replay performance still requires measurement.

Reproduce after building the selected `CorrectData1`, `CorrectLabels0`, and
`CorrectEncode0` modules:

```sh
python3 tools/certificate-bench/labels.py \
  --work work/lean-perf/label-reuse-new --labels 79 461 --trials 3
```

Use `--group` to export/replay the selected functions together and amortize the
shared theorem. The harness reconstructs the direct proof even after rollout,
alternates trial order, rejects nonstandard axiom closures, and kernel-replays
every export. Recorded initial measurements are in
`tools/certificate-bench/label-results.json` and
`tools/certificate-bench/label-group-results.json`.

Regenerate the production proofs with:

```sh
python3 tools/reuse_backend_labels.py
python3 tools/reuse_backend_labels.py --check
```

The corrected target generation queue invokes this automatically after generation.
Eligibility chooses a proof, never grants an assumption: Lean checks the original
statement, the successful encoding premise, and the literal label agreement.
The script is idempotent. All 537 theorem headers were checked against the original
headers before building the rollout. All 537 replaced certificates passed a
16-worker, one-hour-bounded Lake build (3,335 dependency jobs), and every printed
axiom closure was a subset of the standard three.

## Global context: not retained

A proposed cache materialized the common context of 93 global declarations used by
825 frontend certificates. The checked cache did not materially improve builds or
joint replay of functions 0, 15, and 649. Joint replay was approximately 7.75 s
before and 7.79 s after; total process time was approximately 11.7 s in both cases.
The proposal was not propagated to production.

## Further actual reuse candidates

Initial `encSec` encoding processes 168,210 ordinary assembly lines, but there are
only 15,023 distinct instruction terms. The ten most common terms occur 56,307
times; the top fifty occur 90,680 times. Checked instruction-encoding equations
could therefore be shared across functions. A structural certificate must avoid
quadratic conversions of list suffixes; benchmark real chunks before rollout.
The later `encLinesAgain` passes already preserve ordinary assembly bytes, so
those passes do not repeat this initial instruction encoding.

Two pairs of whole guest functions (225/649 and 226/650) also have identical
argument counts and source bodies. Reusing their optimizer certificates requires
handling the outer function number: it affects allocator fallback, but not a
successful oracle result. Such reuse is useful only if complete export replay
improves, not merely if elaboration becomes faster.
