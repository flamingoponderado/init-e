# Reproduce the full EEST run with Spike

This is the sanity check behind the challenge: the assignment, the original
Pancake source of the guest (`guest/src`), must pass the entire `tests-zkevm`
stateless-fixture corpus. It is the complete corpus, not the small
`tools/check_all.sh` sample. `tools/eest-run.py` compares each guest result
with the fixture's `statelessOutputBytes` and reports root, success, and tail
regions. The guest's crypto runs on the accelerator CSRs, which Spike
implements, and the runner is Spike-only. The guest is built with `flapjack`
(`guest/build.sh`'s default `COMPILER`); pass `COMPILER=cake` instead to use a
bootstrapped/prebuilt CakeML `cake` binary. The same run is available as a
Docker image (`Dockerfile`, `.github/workflows/docker.yml`), which bakes in
the guest, `spike_run` and the converted corpus and runs everything with one
`docker run`; see the README's Docker section.

## Prerequisites

Follow `README.md`'s "Quick start" section first: it covers cloning, the
`lake`/`elan`, `riscv64-unknown-elf-{as,ld}`, and Spike-build
(`libboost-all-dev`, `device-tree-compiler`, `libssl-dev`) prerequisites,
initializing the `evm-asm` and `riscv-isa-sim` submodules, and building
`spike_run`. This document only adds the full-corpus-specific steps below,
against the EEST fixture tag this repo currently pins
(`eest-fixture-tag.txt` at the repository root; `tests-zkevm@v21.0.1` for the
recorded run below).

## Fetch, convert, build, and run all fixtures

`tools/eest-spike-full.sh` fetches the pinned EEST fixture tag, converts the
whole corpus, builds the guest, and runs it under Spike:

```bash
tools/eest-spike-full.sh
```

Its output directory is named with the source commit
(`work/eest-spike-<commit>`) so result files can't be mistaken for a run
from another checkout; re-running it with the same commit checked out
reuses that directory's manifest. `SPIKE_RUN` and `EEST_JOBS` (default 32)
are overridable env vars; see the script for details.

`eest-run` exits zero only when every record passes, which is
`tools/eest-spike-full.sh`'s own exit code. A nonzero exit is useful: the
JSON and per-fixture logs remain under the commit-named run directory for
inspection and reruns with `--from-json` or `--labels`.

## Recorded result

Run on commit `a67dd9a557850dc192923bb851f96e113c91544f`, with 16 Spike
workers and the guest built with `flapjack` (ELF sha256 `49f4665abe01822656bca3c1afa8031404064d16bd939a855416b5fd8ec577c8`),
against `tests-zkevm@v21.0.1` (both the `blockchain_tests` and
`blockchain_tests_engine` fixtures):

```text
records: 33614
PASS(full): 33605
PASS(malformed): 9
eest-run exit: 0
```

Steps over the passing cases: min 25,131, max 12,288,040,916, mean 8,946,640.

There were no fixture failures. The commit-qualified run directory and result
JSON are the reproducible record for this passing revision; the tracked
`tools/eest-baseline.json` is not used by this command.
