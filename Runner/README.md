# EEST runner

A native runner for the software guest. It runs EEST inputs through the
Pancake source semantics (`Guest.Software.guestAst` under Flapjack's
`evalPanSemRecursiveCallFiniteContext`) without compiling to RISC-V. It is a
testing tool, not part of the challenge proof, and it is not in the default
build.

## What is proved and what is trusted

The source semantics keeps maps and memory as functions, so each update wraps
another closure, and it appends every FFI event to the end of the event list.
The runner evaluates the same clauses on `Runner.CState`, which keeps:

* locals, globals and exception shapes in association lists,
* code in a `Std.HashMap`,
* memory in a persistent binary trie (`Runner/Trie.lean`),
* FFI events newest first,
* the input arena in an array.

`Runner.view` reads a `CState` back as a source state.

* `Runner.cEval_correct` shows that `Runner.cEval` agrees with the source evaluator. From
  `view c`, the source evaluator returns the same result and `view` of the
  runner's final state.
* `Runner.cDecls_correct` shows the same for the declarations.
* `Runner.crun_report` shows that when a run ends in a final FFI call, that run is
  `sourceBehaviour input`, and the bytes the runner writes are `outputByte` of
  it.

The proofs use only `propext`, `Classical.choice` and `Quot.sound`.

There is no extraction: the Lean compiler builds the runner from the same
definitions the proofs are about. The trusted base is the Lean compiler and
runtime, the command-line code in `Runner/Main.lean` that reads the input file
and writes the output file, and its exit-code classification.

## Build and run

```sh
lake build Runner            # the proofs
lake build eest-runner       # the executable
```

The command line matches `spike_run`'s: `eest-runner [ELF] INPUT OUTPUT`.
The ELF argument is ignored. `INPUT` is a converted EEST input (an 8-byte
little-endian length, then the payload). `OUTPUT` receives `SPIKE_OUTPUT_LEN`
output bytes (default 256). `EEST_RUNNER_CLOCK` sets the source clock
(default 2^40). Exit codes:

| Code | Meaning |
|---|---|
| 0 | `halt` |
| 3 | `trap` |
| 4 | clock exhausted |
| 5 | evaluation error |
| 6 | another final call |
| 2 | usage or input error |

The status line on stderr gives the clock used and the number of FFI events.

`tools/eest-run.py` drives it through `SPIKE_RUN`:

```sh
SPIKE_RUN=$PWD/.lake/build/bin/eest-runner \
  python3 tools/eest-run.py none.elf MANIFEST.tsv --jobs 16 --json results.json
```

`eest-run.py` reads step counts from Spike's log, so it reports no steps for
this runner.

## Results

The score witness block (EEST case 00818) halts with the expected output in
0.8 s, using 30,975 clock units.

On the 309 cases of the sampled baseline in the `tests-zkevm@v21.0.1`
manifest, run with `--jobs 24` (3m24s wall clock):

* 300 cases are `PASS(full)` and 9 are `PASS(malformed)`.
* The output bytes, debug bytes, trap and stage markers all agree with a recorded
  Spike run of guest commit 45e6117f.
