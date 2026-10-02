# Allocation audit: gas before memory

**Goal.** For every block whose declared gas limit is at most 200M, no OOM trap
may fire, even on a maliciously crafted block. The OOM traps are `trap_with` codes
1, 6 and 7 (allocator exhaustion, `guest/src/lib/mem.pnk`) and codes 4 and 5
(journal full, `guest/src/state.pnk`; treated as OOM, see below). This needs two
properties:

1. **Ordering.** Gas is charged *before* any allocation whose size or count
   depends on EVM or transaction input. Accounting after the allocation is too
   late.
2. **Footprint.** Total memory in use is bounded by what the gas pays for.

**Status.** Ordering (1) holds for the EVM opcode paths (see "Resolved: charge
before allocate"). Two footprints are resolved: the per-call accessed-set copies and
the journal-full traps (see "Resolved" below and
[JOURNAL-BOUND.md](JOURNAL-BOUND.md)). Property (2) does **not** hold overall: the
items under "Open" are footprints that gas does not pay for, so the goal is **not met
yet**.

**How to read the estimates.** Prices are in bytes of memory per unit of gas. A
higher number is cheaper memory for an attacker. For anything that happens once per
transaction the price uses the cheapest transaction, a plain transfer at 21,000 gas.
Two limits decide when a price turns into a trap:

* the heap is 251,658,240 B (240 MiB), of which the journal takes 16,777,216 B, so
  a rate of about 1.2 B/gas over all 200M gas fills it; and
* the frame-memory plus scratch arena is 12,509,184 B (11.9 MiB), which a rate of
  0.0625 B/gas over 200M gas would fill.

Except where marked "measured", figures come from a static audit (three read-only
reviews of `guest/src/*.pnk`) and hand arithmetic from struct and hash-table sizes.
Confirm each with a run before relying on it. A trapping run records `heap_ptr` at
`OUTPUT_ADDR + 40` (see `trap_with`), which can be used to measure.

## Block gas limit reaches each transaction before it runs

The header's gas limit is stored in `be + BE_GAS_LIMIT` (`fork.pnk` `execute_block`
setup) and re-applied before every transaction:

* `check_transaction` (`fork.pnk`, called at the start of `process_transaction`
  before any execution) recomputes the remaining gas from the running totals:
  `regular_avail = limit - BO_GAS_USED` and `state_avail = limit - BO_STATE_GAS_USED`.
  It rejects the block (`BlockErr 80`/`81`) if `min(TX_MAX_GAS_LIMIT, tx.gas) > regular_avail`
  or `tx.gas > state_avail`.
* `BO_GAS_USED` and `BO_STATE_GAS_USED` are updated after each transaction
  (`fork.pnk`), so the next transaction sees what is left.
* The gas handed to execution is `mgas = min(TX_MAX_GAS_LIMIT - intrinsic, tx.gas - intrinsic)`
  plus a reservoir for the rest, so regular execution gas plus intrinsic gas never exceeds
  `min(TX_MAX_GAS_LIMIT, tx.gas)`, hence never exceeds `regular_avail`.

So a transaction cannot run with more gas than the block has left; the limit is not
compared only after the fact. Two caveats: regular and state gas are separate budgets
(each bounded by the limit), so memory driven by state-gas operations can add to memory
driven by regular gas; and the number of transactions is bounded only by the 21,000
intrinsic gas each, which is why the per-transaction heap use (Open item 7) matters.

## Trap classes under the challenge statement

The challenge lets a submission behave arbitrarily when the original source
diverges or OOM-traps, but requires it to match when the original terminates or
traps for a non-OOM reason. So the guest's traps split as follows
(`trap_with` sites):

| Code | Site | Reason | Class |
|---|---|---|---|
| 1 | `alloc` (`lib/mem.pnk`) | heap exhausted, or `n` would wrap `p + n` | OOM |
| 6 | `frame_mem_alloc` | EVM frame-memory arena exhausted | OOM |
| 7 | `scratch_alloc` | scratch arena exhausted | OOM |
| 4, 5 | `jset`, `jdel` (`state.pnk`) | fixed-size journal full | OOM (treated as OOM; made unreachable at 200M gas, see [JOURNAL-BOUND.md](JOURNAL-BOUND.md)) |
| 2 | `lib/arith.pnk` | division by zero | non-OOM |
| 3 | `header.pnk` | base-fee arithmetic overflow | non-OOM |

An OOM trap hands the submission a free pass on that block, so it must be unreachable
for blocks at or below 200M gas; and a change here must not turn a non-OOM trap into
an OOM one or the reverse.

## Memory map

| Arena | Region | Size | Used for |
|---|---|---|---|
| heap (`alloc`) | `[0xa1000000, 0xb0000000)` | 240 MiB | persistent state, logs, tables, code, input, the 16 MiB journal |
| EVM frame memory (`frame_mem_alloc`) | bottom of `[0xa0411000, 0xa0fff000)` | shares 11.9 MiB with scratch | per-frame EVM `MEMORY` |
| scratch (`scratch_alloc`) | top of the same region | | per-frame struct, stack, jumpdest bitmap, tables |

## Open: footprints that gas does not pay for

Ordered by price, cheapest memory first, with the one item that costs no gas at the
top.

| # | Where | Problem | Price (bytes per gas) | Limit it reaches |
|---|---|---|---|---|
| 1 | `process_withdrawals` (`fork.pnk`), `decode_payload` (`ssz.pnk`) | The withdrawal count is bounded only by the 8 MiB block-size check, not by gas. Each withdrawal allocates about 3 KB (account copy, journal key copy, a BAL account of about 1.4 KB) | **not priced in gas**: about 3 KB each at 0 gas, so up to about 190k withdrawals is about 570 MB | heap, from the block size alone |
| 2 | `frame_new`, `compute_jumpdests` (`evm.pnk`) | Every live call frame allocates about 2.9 KB of fixed setup (frame struct, 1 KiB stack, 1 KiB memory, message, continuation record, tables) plus a jumpdest bitmap of `code_n / 8` bytes, up to 8,200 B for 64 KiB code. The bitmap is rebuilt per frame, not cached. A warm CALL costs 100 gas and charges for none of it | about 110 B/gas (64 KiB code, about 11.1 KB per call at 100 gas); about 30 B/gas for small code | scratch arena. Depth is capped at 1,024 frames, about 11.4 MB, which is 91% of the arena; a few hundred more bytes per frame (for example 33 pushes, which doubles the stack) overruns it, within about 0.5M gas |
| 3 | `stack_push` (`evm.pnk`) | The stack doubles from 32 to 1,024 words and keeps every old buffer until the frame exits: about 63 KB for a full stack | about 30 B/gas (1,017 `PUSH0` at 2 gas, plus a 100-gas CALL, for about 66 KB) | scratch arena, after about 190 frames, within about 0.4M gas |
| 4 | `extend_memory` (`evm.pnk`) | Paid EVM memory costs 3 gas per 32-byte word plus `w^2/512`, which is about 10 B/gas for small sizes, and the quadratic term is paid per frame, so splitting memory across live frames is cheaper than one large frame. `extend_memory` also doubles the capacity although the arena grows in place, so up to twice the paid size is taken (see below) | about 10 B/gas paid; up to about 20 B/gas allocated at small sizes (for example 1,025 bytes costs 101 gas and takes 2,048) | frame-memory arena, within about 0.6M to 1.2M gas across live frames |
| 5 | `set_retdata` (`evm_calls.pnk`) | Allocates `n + 8` bytes on the heap whenever a call returns more than the frame's retdata buffer holds, and never frees it. The callee paid memory for `n` once; the parent pays about 100 gas for the CALL. Calls that return increasing sizes leak each size | about 6 to 8 B/gas (a run of calls returning 32 B, 64 B, 96 B and so on) | heap, after about 30M to 40M gas |
| 6 | `TSTORE` (`evm.pnk`, `state.pnk` `set_transient_storage`, `jset`, `htab_grow`) | With distinct keys, 100 gas allocates the value, a journal key copy, and a transient-table slot of about 81 B; `htab_grow` doubles the table and abandons the old arrays | about 4 to 7 B/gas | heap, after about 35M to 65M gas |
| 7 | per transaction: `state_fresh_tx` (`state.pnk`), `process_transaction` (`fork.pnk`) | Allocates the transaction's tables on the heap and never releases them; there is no `heap_release` in the transaction loop | about 1.15 B/gas: **measured** minimum of 24,232 B per transaction over 370 sampled cases with 1 to 16 transactions, against 21,000 gas for the cheapest transaction. 9,523 minimal transfers is about 231 MB, plus the 16.8 MB journal, close to the 251.7 MB heap before the input, witness and BAL | heap |
| 8 | `SSTORE` rewrite of an existing slot, `TSTORE` of an existing key (`state.pnk` `set_storage`, `jset`) | Each write allocates a 32 B value and a 56 B journal key copy and never frees them | 0.9 B/gas (88 B per 100 gas), about 176 MB at 200M gas | heap |
| 9 | BAL (`bal.pnk` `bal_ensure_account`) | About 1.4 KB per touched account, plus about 0.3 to 1 KB in the block-state tables. The EIP-7928 item limit is checked only after execution | about 0.55 to 1 B/gas (cold account access is 2,600 gas) | heap |
| 10 | `htab_grow`, `lst_push` | Always allocate on the heap and abandon the old arrays, so a grown table costs about twice its final size. Accessed sets, transient storage, BAL and logs all grow this way | about 0.3 B/gas (a storage-key slot is about 81 B at 2 to 4 slots per entry, doubled for abandoned arrays, against 2,100 gas per cold key) | heap |
| 11 | `compute_state_root` (`block.pnk`) | Re-decodes the witness storage trie per modified account, with no `heap_release` | about 0.2 to 0.5 B/gas (unverified) | heap |
| 12 | `op_log`, receipts (`evm.pnk`, `block.pnk`) | Log records and receipt buffers persist. `LOG0` is 375 gas for about 150 B; the receipt buffer and bloom are about 650 B per transaction | about 0.4 B/gas for `LOG0`; about 0.03 B/gas for the receipt of a cheapest transaction | heap |

Accepted: precompile output buffers are never released (blake2f with 0 rounds is
the worst, about 100 MB at 200M gas, about 0.5 B/gas). That cost is paid for in gas.

### What `extend_memory` is

`extend_memory(expand_by)` in `evm.pnk` grows the current call frame's EVM `MEMORY`
by `expand_by` bytes and zero-fills them. It is called, after the gas for the
expansion has been charged, by every opcode that touches memory:

* `MLOAD`, `MSTORE`, `MSTORE8` (through `charge_with_memory`), `MCOPY`, `KECCAK256`,
  `LOG0` to `LOG4`;
* the copy opcodes `CALLDATACOPY`, `CODECOPY` (through `copy_from_buffer`),
  `EXTCODECOPY` and `RETURNDATACOPY`;
* `RETURN` and `REVERT` (the returned range);
* `CREATE` and `CREATE2` (the init-code range);
* `CALL`, `CALLCODE`, `DELEGATECALL` and `STATICCALL` (the input and output ranges).

The cost side is `extend_memory_cost1` and `extend_memory_cost2`, which return the
quadratic gas and `expand_by`; callers charge that and then call `extend_memory`.
If the new length exceeds the frame's capacity, `extend_memory` asks the arena for
`max(2 * cap, new_len + 1024) - cap` more bytes through `frame_mem_alloc`. Each frame
starts with 1,024 bytes of capacity. The frame is always the top frame when it
expands (a child's memory is released before the parent resumes), so the arena can
grow in place and the doubling gains nothing; it only raises the footprint to as
much as twice the paid size.

## Suggested directions

* Allocate the per-transaction tables once and clear them (`htab_clear`) instead
  of calling `htab_new` per transaction (item 7).
* A transaction-scoped arena, reset in `state_fresh_tx`, for objects that live no
  longer than the transaction: journal key copies, TSTORE and SSTORE values, tables
  (items 5, 6, 7, 8, 10).
* Cache the jumpdest bitmap per code hash instead of rebuilding it per frame
  (item 2; it also scans all of the code on every call, which is unpaid compute).
* Preallocate stacks at a fixed `STACK_DEPTH_LIMIT * 32 KiB` region, or charge for
  frame footprint, and size the frame arena for the worst case (items 2, 3, 4).
  Grow frame memory in steps of the paid size, not by doubling (item 4).
* Count BAL items and withdrawals before allocating (items 1, 9).
* Add stress tests (about 9,500 minimal transfers; a 16.7M-gas TSTORE loop; deep
  recursion over a large contract; deep recursion with full stacks) and record the
  final `heap_ptr` and arena pointers.

## Resolved: charge before allocate

The EVM opcode paths now charge gas before they allocate or insert into the
accessed sets. All of these keep the total gas charged unchanged; only the order
differs.

| Site | Before | After |
|---|---|---|
| `access_gas_cost` users: BALANCE, EXTCODESIZE, EXTCODECOPY, EXTCODEHASH (`evm.pnk`) | warmed the address (can grow a table), then charged | charge, then `warm_after_charge` |
| `op_sload` | `alloc(32)` key and warm insert, then charge | preallocated key buffer; charge, then warm |
| `op_sstore` | `alloc(32)` key, `check_gas`, warm, state reads, charge | preallocated key buffer; charge the access cost, warm, state reads, then charge the rest |
| `op_tload`, `op_tstore` | `alloc(32)` key | preallocated key buffer |
| `op_log` | `alloc` topics before the gas charge | charge (with a stack-depth check kept first), then allocate |
| `op_create2` | `alloc(32)` salt before the charge | charge, then allocate |
| `op_selfdestruct` (`evm_calls.pnk`) | `check_gas`, warm, state reads, charge | charge base and cold cost, warm, state reads, charge the rest |
| `op_call`, `op_callcode`, `op_delegatecall`, `op_staticcall` | `check_gas`, warm, delegation read (`alloc(24)`), code read, then charge | charge access, transfer and memory cost; warm; delegation read, charge delegation cost; then code read |
| `pre_modexp` header | `alloc(96)` before the gas is known | preallocated header buffer |
| `alloc`, `frame_mem_alloc`, `scratch_alloc` | `p + n` could wrap | explicit overflow check before the add |

The preallocated buffers (`evm_key_buf`, `pre_hdr_buf`) are safe to reuse: every
callee that keeps a key copies it (`jset`, `htab_set`).

Reads of account and storage state still happen after the access cost is
charged but before the state-dependent remainder (for example SSTORE's write
cost, SELFDESTRUCT's new-account cost). The remainder depends on the values
read, so the read cannot move. Those reads allocate small cached records only.

## Resolved: shared accessed sets

Before, every CALL/CREATE copied both accessed sets (addresses and storage keys)
into scratch, sized by table capacity, and a successful child merged its whole copy
back with `htab_union_into`. A child that grew a table on the heap and reverted left
the parent's table unchanged, so the same growth could be repeated for a few gas
each. Now there is one pair of tables per transaction, shared by all frames
(`child_message` passes the pointers on):

* `frame_new` records the entry count of each table when a frame starts
  (`EV_ACC_ADDRS_N`, `EV_ACC_KEYS_N`).
* A failed child calls `rollback_child_access`, which `htab_truncate`s each table
  back to that count. Insertion only appends to a table's iteration order and
  nothing else deletes from a table in use, so the entries added since the mark are
  exactly the tail of the order. No separate undo log is needed.
* A successful child leaves its entries in place, so the parent's own rollback
  covers them. The merge is gone.

Memory in use is one table per transaction, whose entries are each paid for (a cold
access costs at least 1,900-2,600 gas). A table that has grown keeps its capacity
after a rollback, so warm-then-revert does not regrow it on each call. Per-call cost
no longer depends on how large the accessed sets are.

## Resolved: journal-full traps

Codes 4 and 5 were reachable: a system transaction runs 30M gas outside the block
gas limit, and TSTORE writes one journal record per 100 gas, which is 300,000
records against a cap of 262,144. `JOURNAL_CAP` is now 524,288, a compile-time check
ties it to `TX_MAX_GAS_LIMIT` and `SYSTEM_TRANSACTION_GAS`, and the journal is reset
after each withdrawal. The derivation and the assumptions to re-check are in
[JOURNAL-BOUND.md](JOURNAL-BOUND.md).
