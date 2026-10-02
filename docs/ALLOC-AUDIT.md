# Allocation audit: gas before memory

**Goal.** For every block whose declared gas limit is at most 200M, no
allocator trap (`trap_with` codes 1, 6, 7 in `guest/src/lib/mem.pnk`) may fire,
even on a maliciously crafted block. This needs two properties:

1. **Ordering.** Gas is charged *before* any allocation whose size or count
   depends on EVM or transaction input. Accounting after the allocation is too
   late.
2. **Footprint.** Total memory in use is bounded by what the gas pays for.

**Status.** This PR establishes (1) for the EVM opcode paths listed below, and it
removes two footprints: the per-call accessed-set copies (items 4 and 6 below) and
the journal-full traps (item 13, see [JOURNAL-BOUND.md](JOURNAL-BOUND.md)). It does
**not** establish (2) overall: the remaining items under "Open" are footprints that
gas does not pay for, so the goal is **not met yet**.

The audit was static (three read-only reviews of `guest/src/*.pnk`). Byte
figures are hand arithmetic from struct and hash-table sizes. Nothing was
measured, so confirm each with a run before relying on it. A trapping run
records `heap_ptr` at `OUTPUT_ADDR + 40` (see `trap_with`), which can be used to
measure.

## Block gas limit reaches each transaction before it runs

Checked, no change needed. The header's gas limit is stored in `be + BE_GAS_LIMIT`
(`fork.pnk` `execute_block` setup) and re-applied before every transaction:

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
driven by regular gas; and the number of transactions is bounded by the 21,000 intrinsic
gas each, which is why the per-transaction heap use (Open item 1) matters.

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
| 4, 5 | `jset`, `jdel` (`state.pnk`) | fixed-size journal (262,144 entries) full | capacity exhaustion; treated as OOM here, **needs your confirmation** |
| 2 | `lib/arith.pnk` | division by zero | non-OOM |
| 3 | `header.pnk` | base-fee arithmetic overflow | non-OOM |

Consequences for the goal above: an OOM trap hands the submission a free pass on
that block, so it must be unreachable for blocks at or below 200M gas; and a change
here must not turn a non-OOM trap into an OOM one or the reverse. Codes 4 and 5 are
only about 1.5x away from the 16.7M-gas per-transaction cap (Open item 13).

## Memory map

| Arena | Region | Size | Used for |
|---|---|---|---|
| heap (`alloc`) | `[0xa1000000, 0xb0000000)` | 240 MiB | persistent state, logs, tables, code, input |
| EVM frame memory (`frame_mem_alloc`) | bottom of `[0xa0411000, 0xa0fff000)` | shares 11.9 MiB with scratch | per-frame EVM `MEMORY` |
| scratch (`scratch_alloc`) | top of the same region | | per-frame struct, stack, jumpdest bitmap, tables |

## Fixed in this PR (charge before allocate)

All of these keep the total gas charged unchanged; only the order differs.

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

## Fixed in this PR (accessed-set copies)

Before, every CALL/CREATE copied both accessed sets (addresses and storage keys)
into scratch, sized by table capacity, and a successful child merged its whole copy
back with `htab_union_into`. Now there is one pair of tables per transaction, shared
by all frames (`child_message` passes the pointers on):

* `frame_new` records the entry count of each table when a frame starts
  (`EV_ACC_ADDRS_N`, `EV_ACC_KEYS_N`).
* A failed child calls `rollback_child_access`, which `htab_truncate`s each table
  back to that count. Insertion only appends to a table's iteration order and
  nothing else deletes from a table in use, so the entries added since the mark are
  exactly the tail of the order. No separate undo log is needed.
* A successful child leaves its entries in place, so the parent's own rollback
  covers them. The merge is gone.

Memory in use is now one table per transaction, whose entries are each paid for
(a cold access costs at least 1,900-2,600 gas). A table that has grown keeps its
capacity after a rollback, so warm-then-revert no longer regrows it on each call.
Per-call cost no longer depends on how large the accessed sets are.

The preallocated buffers (`evm_key_buf`, `pre_hdr_buf`) are safe to reuse: every
callee that keeps a key copies it (`jset`, `htab_set`).

Reads of account and storage state still happen after the access cost is
charged but before the state-dependent remainder (for example SSTORE's write
cost, SELFDESTRUCT's new-account cost). The remainder depends on the values
read, so the read cannot move. Those reads allocate small cached records only.

## Open: footprints that gas does not pay for

Ranked by severity. Item 4 (accessed-set copies) is removed from the table because this PR fixes it; item 6 is partly addressed and item 13 is resolved. The rest are not addressed by this PR.

| # | Where | Problem | Estimate (unverified) |
|---|---|---|---|
| 1 | per transaction: `state_fresh_tx` (`state.pnk`), `process_transaction` (`fork.pnk`) | about 25 KB of tables allocated per transaction on the heap and never released; there is no `heap_release` in the transaction loop | 9,523 minimal transfers is about 243 MB, over the 240 MiB heap, before 200M gas is spent |
| 2 | `TSTORE` (`evm.pnk`, `state.pnk` `set_transient_storage`, `jset`, `htab_grow`) | 100 gas allocates key, value, journal key copy and a table slot; `htab_grow` abandons the old arrays | about 6 B/gas, about 100 MB per 16.7M-gas transaction |
| 3 | `SSTORE` rewrites | 120 B per write at 100 gas, never released | about 1.2 B/gas, about 240 MB at 200M gas |
| 5 | `frame_new` (`evm.pnk`), `stack_push` growth | about 3 KB per live frame plus the stack, which doubles and keeps every old buffer until the frame exits (about 63 KB for a full stack); CALL does not charge for any of it | about 190 frames with full stacks fill the arena for under 1M gas |
| 6 | `htab_grow`, `lst_push` | always allocate on the heap and never free the old arrays; the warm-then-revert repetition is gone (see above), but tables that grow still abandon their old arrays (about 2x the final size) | bounded by about twice the final table size |
| 7 | `set_retdata` | allocates `n + 8` on the heap per CALL whose output outgrows the buffer; the parent pays about 100 gas | about 3-6 B/gas |
| 8 | BAL (`bal_ensure_account`) | about 1.4 KB per touched account; the EIP-7928 item limit is checked only after execution | about 0.55-1 B/gas |
| 9 | `process_withdrawals`, `decode_payload` | the withdrawal count is bounded only by the 8 MiB block size, not by gas | up to about 190k withdrawals |
| 10 | `extend_memory` | doubles capacity although the arena grows in place, inflating the footprint up to 2x | |
| 11 | `compute_state_root` (`block.pnk`) | re-decodes the witness storage trie per modified account; no `heap_release` | about 0.2-0.5 B/gas |
| 12 | `op_log`, receipts | log records and receipt buffers persist | about 0.3 B/gas |
| 13 | journal (`state.pnk`) | resolved: see [JOURNAL-BOUND.md](JOURNAL-BOUND.md) (cap raised to 524,288, compile-time check, per-withdrawal reset) | |

Accepted: precompile output buffers are never released (blake2f with 0 rounds is
the worst, about 100 MB at 200M gas). That cost is paid for in gas.

## Suggested directions

* Allocate the per-transaction tables once and clear them (`htab_clear`) instead
  of calling `htab_new` per transaction (item 1).
* A transaction-scoped arena, reset in `state_fresh_tx`, for objects that live no
  longer than the transaction: journal key copies, TSTORE values, tables
  (items 1-3, 6, 7).
* Preallocate stacks at a fixed `STACK_DEPTH_LIMIT * 32 KiB` region, or charge for
  frame footprint, and size the frame arena for the worst case (items 5, 10).
* Count BAL items and withdrawals before allocating (items 8, 9).
* Add stress tests (about 9,500 minimal transfers; a 16.7M-gas TSTORE loop; deep
  recursion with full stacks; a large accessed set with nested calls) and record
  the final `heap_ptr` and arena pointers.
