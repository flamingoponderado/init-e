# Challenge spec

## Overview

Assumptions

* **(input)** Execution starts with input in input buffer of Zisk (128 MB starting 0x4000_0000)
* **(initial pc)** Execution starts from the fixed program counter 0x8000_0000 (Zisk's `ROM_ADDR`, where Zisk's own program starts after its BIOS)
* **(code size)** The submission's code is at most 128 MiB (0x0800_0000 bytes, the size of Zisk's ROM window), loaded at the initial pc
* **(RAM)** 29GB from 0xa000_0000
* **(gas)** if the block gas limit parses from the input (by a fixed-position reader, `Guest/GasLimit.lean`), it is at most 200M (formally: `Guest.GasLimit.declaredGasLimit input ≤ 200000000`). The input might not parse; that case fits the assumption, and the conclusion below applies as usual
* **(RISC-V?)** The vibe-ported RISC-V interpreter in the Flapjack repo will be used.

Conclusion

* Let **(output)** be content of 0x10000, 64 KiB in case the submission RISC-V terminates
* **(functional equivalence)**
  * **original success case**: if the original Pancake source (the same RAM size) terminates normally validating the input on Pancake interpreter, the submission RISC-V also terminates with the same output under $K$ steps.
  * **original invalid case**: if the original Pancake source (the same RAM size) terminates normally rejecting the input (or traps for no-OOM reasons) on Pancake interpreter, the submission RISC-V also terminates rejecting the input (or traps for no-OOM reasons) under $K$ steps. All failures are treated equal, so terminating rejects and no-OOM traps all correspond.
  * **original diverging case**: if the original Pancake source diverges, OOM-traps, or evaluation failure (evaluator returning none), the submission might terminate, trap or diverge freely.

Score is $K \in \mathbb{N} \cup \{ \infty \}$.

The initial submission follows from the Pancake compiler correctness theorem with $K = \infty$.

## Rationales and considerations

**(input)** the first eight bytes contains the size of the input; but this convention is already taken care of by the functional equivalence.

**(gas)** this allows submission to do anything if declared gas is too big. Current Pancake source allows big block gas limit (needed to pass EEST). Alternative is: if declared block gas limit is too big, either same output as the original Pancake source or diverge. In any case, it's easy to patch the winner to reject too big declared block gas limit. Current statement formulation is simpler than the alternative.

**(code size)** a limit on the code keeps the submission from encoding a huge lookup table or precomputation in its code, and 128 MiB is the program window Zisk gives (`ROM_ADDR_MAX = ROM_ADDR + 0x0800_0000 - 1` in Zisk's `core/src/mem.rs`; its top 1 MiB is Zisk's float library, not counted here). The program the original Pancake source compiles to is well below it (the guest's `.text` is under 1 MiB).

**(RISC-V?)** The bet is we can prove equivalence of Sail RISC-V and the used interpreter, or failing that we can implement the used interpreter as a zkVM.

**(functional equivalence)** is a way to postpone choosing and using canonical spec. The bet is: any future difference vs the canonical spec will be local enough.

**diverging case**: maybe the submission reduces memory allocation (a good thing), so even when the original Pancake goes OOM trap, the submission might output something. The submission should not be required to spend resources trying to figure out when the original Pancake goes OOM. The bet is: the diverging case is moot because it's provable that the original Pancake source never OOM-traps for a block of at most 200M declared block gas.

**(RAM)** 29GB is rather big. However, this supports our bet that the original Pancake source does not go OOM for blocks under declared 200M block gas. The bet here is: we'll be able to prove reasonable a memory bound for the winner (it's probable; the winner won't allocate unnecessarily, and the allocation is probably limited by gas.) I thought about making the whole 2^64 addresses available but that might lead to unrealistically big lookup tables or some weird data structure, so I'd rather stay with 29GB.

## Trust Boundary

* We need to separately prove that the original Pancake source does not go OOM for blocks with at most declared 200M block gas.
* We need to separately prove that the RISC-V semantics in the challenge refines to the RISC-V implemented by zkVMs.
* (to brainstorm)
