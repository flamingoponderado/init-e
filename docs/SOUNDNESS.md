# Soundness notes

## The memory is intentionally big

The challenge (`docs/CHALLENGE.md`) states functional equivalence against the
Pancake source on a machine with 29 GB of RAM from `0xa000_0000`. That size is
chosen for technical reasons in how the challenge is stated, not because any
particular zkVM provides it:

* Under 200M declared block gas the original Pancake source should never
  OOM-trap (see `docs/ALLOC-AUDIT.md`: about 2.5 GB of heap plus the input,
  and tens of MB of arenas, by static analysis). If the RAM is large enough
  for that, the "OOM-traps" part of the diverging case is moot, and the
  statement does not need the submission to reason about when the original
  runs out of memory.
* A very large (but finite) RAM avoids giving submissions an incentive to rely
  on a tight memory size, and avoids the unrealistic data structures that an
  unbounded address space would invite.

This is why this repository's tests run on Spike (`tools/spike/spike_run`) and
not on ZisK's `ziskemu`: ZisK's RAM is far smaller, so the machine the
challenge is stated for is not a ZisK machine, and ZisK/`ziskemu` support was
dropped.

**Whether a given zkVM has enough memory is checked separately.** Nothing here
claims that ZisK, or any other zkVM, can run the guest on every block with at
most 200M declared gas, or that the memory bound proved for the original
source fits in a given zkVM's RAM. That is a separate obligation, to be
discharged for the zkVM actually used (it is a trust boundary of the
challenge, alongside the proof that the RISC-V semantics in the challenge
refines the zkVM's).
