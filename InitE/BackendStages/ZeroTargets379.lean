import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded379
import InitE.BackendStages.ZeroData379
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets379_eq : Padded379.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys379 := by
  with_unfolding_all rfl
theorem zeroTargets379_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded379 acc = ZeroData.keys379.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets379_eq]
#print axioms zeroTargets379_eq
end InitE.BackendStages
