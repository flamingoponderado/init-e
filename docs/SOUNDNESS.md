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

## What a passing submission does not guarantee

A submission that passes the challenge is equivalent to the Pancake source only
as `docs/CHALLENGE.md` states. The following can still go wrong.

* **The RISC-V semantics may differ from the zkVM's.** The semantics the
  challenge is stated against and the zkVM's implementation might differ. A
  submission proved against the former is not thereby correct on the latter
  until the refinement is shown (see above).
* **A passing submission might accept an invalid block** if the Pancake source
  runs out of memory on it (the free case, where the submission may do
  anything), or if the Pancake source itself accepts the invalid block (a bug
  of the source, which a submission must reproduce).
* **A passing submission might reject a valid block**, in the symmetric cases:
  the Pancake source runs out of memory or diverges on it (the free case, so the
  submission may reject or trap), or the Pancake source itself rejects the valid
  block (a bug of the source, which a submission must reproduce). The same
  freedom applies when the declared block gas limit parses and exceeds 200M.
* **A trustworthy Lean specification of the stateless guest does not exist.**
  The challenge is stated relative to the Pancake source, not to a specification
  that has been validated against the Ethereum consensus rules.
* **The challenge might produce something that is not a stateless guest.** Since
  the assignment is the Pancake source and the statement has the free cases
  above, a winning submission is not necessarily a correct stateless guest.
* **Lean elaboration might turn a statement into an unintended internal
  representation.** What is checked is the elaborated term, which might not
  mean what the source text appears to say (notations, coercions, instances,
  `native_decide` and similar).
* **The proof checker might be buggy.** A bug in Lean's kernel, or in the tools
  around it, could accept a false theorem.
* **Lean's type theory might be inconsistent.** Everything proved in it is
  conditional on its consistency.
