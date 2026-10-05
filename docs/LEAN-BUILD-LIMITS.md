# Limit external Lean compiler processes

Lake 5.0.0 / Lean 4.33.1 starts independent module jobs asynchronously and has no
supported external-process job limit. CPU affinity limits CPU use but does not
limit the number of compiler environments loaded into memory.

Run the build with the project-local limiter:

```sh
rtk proxy timeout --kill-after=5s 1200s taskset -c 0-15 python3 tools/limited-lake.py --slots 16 -- lake build InitE.WordBackend.FunctionsFacts
```

The default is 16 slots; `--slots` accepts 1–16. Each small C launcher acquires a
blocking `flock` before executing the unchanged real Lean compiler. The lock file
descriptor survives `exec`, and the kernel releases it when the compiler exits.
Arguments, environment, standard streams, real githash, and exit status are
forwarded. Waiting launchers are cheap. Slot buckets can leave uneven tail work.

The Python helper creates a project-local virtual sysroot containing symlinks to
the selected installed toolchain, with only `bin/lean` replaced by the launcher.
It selects this through Lake's supported `LAKE_OVERRIDE_LEAN=1` and
`LEAN_SYSROOT` settings. The installed toolchain is read only. The default work
folder is `work/lean-perf/small-optimizer/limiter`; `--work-dir` must remain inside
the project. Copied trusted helpers can specify `--project-dir`. Nested launches
reuse the underlying real compiler and lock directory, and cannot increase the
parent's slot cap. Run metadata records trusted helper source hashes.

Use at most 16 CPUs and recommend `TasksMax=16384` for large fresh builds: Lake
still creates waiting processes and I/O threads, so 16 compiler slots do not
mean 16 tasks. The limiter does not gate separate C compiler or `leanir` jobs.

Checks: eight simultaneous fake compilers with two slots recorded peak activity
of exactly two and returned to zero, confirming lock inheritance through exec.
Twelve simultaneous real Lean requests with four slots reached exactly four.
Checked Compact191/207 targets remained up to date under the virtual sysroot,
and a fresh main Optimize262 wrapper passed with the standard three axioms.
Nested outer-two/inner-sixteen cache checks preserved the two-slot cap.

Full private-verifier integration is pending. Its sanitized environment currently
drops limiter settings; wrapping the verifier alone is insufficient. It must
explicitly propagate `LAKE_OVERRIDE_LEAN`, `LEAN_SYSROOT`, `LEAN_LIMIT_REAL`,
`LEAN_LIMIT_LOCK_DIR`, and `LEAN_LIMIT_SLOTS` across compiler phases and use
hash-checked copies of the C/Python helpers. These smoke checks do not establish
that the full verifier passes.
