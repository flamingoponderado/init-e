import InitE.BaselineMemoryDomains

namespace InitE
open Flapjack
set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem baseline_submission_finite :
    baselineNames.length = 20 + baselineMmio.length ∧
    baselineEntryPcs.Nodup ∧
    (∀ i : Fin baselineEntryPcs.length,
      initialPc < baselineEntryPcs[i].toNat ∧
      baselineEntryPcs[i].toNat < initialPc + 950336 ∧
      holAligned 2 baselineEntryPcs[i] = true ∧
      baselineEntryPcs[i] ≠ BitVec.ofNat 64 nativePc - 16 ∧
      baselineEntryPcs[i] ≠ BitVec.ofNat 64 nativePc - 32) ∧
    (∀ i : Fin baselineMmio.length,
      baselineMmio[i].entryPc < 904056 ∧
      nativePc + baselineMmio[i].exitPc < initialPc + 950336) := by
  native_decide


end InitE
