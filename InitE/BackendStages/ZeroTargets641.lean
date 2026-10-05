import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded641
import InitE.BackendStages.ZeroData641
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets641_eq : Padded641.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys641 := by
  with_unfolding_all rfl
theorem zeroTargets641_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded641 acc = ZeroData.keys641.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets641_eq]
#print axioms zeroTargets641_eq
end InitE.BackendStages
