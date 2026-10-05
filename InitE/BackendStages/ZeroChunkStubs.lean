import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkDataStubs
import InitE.BackendStages.FinalChunkStubs
import InitE.BackendStages.ZeroTargets0
import InitE.BackendStages.ZeroTargets1
import InitE.BackendStages.ZeroTargets2
import InitE.BackendStages.ZeroTargets4
import InitE.BackendStages.ZeroTargets5
import InitE.BackendStages.ZeroTargets6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunkStubs
theorem targets_eq : ZeroProgramCollection.targets FinalChunkStubs.padded = ZeroChunkDataStubs.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded0.lines.filterMap ZeroCollection.lineTarget, Padded1.lines.filterMap ZeroCollection.lineTarget, Padded2.lines.filterMap ZeroCollection.lineTarget, Padded4.lines.filterMap ZeroCollection.lineTarget, Padded5.lines.filterMap ZeroCollection.lineTarget, Padded6.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkDataStubs.keys
  rw [targets0_eq, targets1_eq, targets2_eq, targets4_eq, targets5_eq, targets6_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunkStubs
