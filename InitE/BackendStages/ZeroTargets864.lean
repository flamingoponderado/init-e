import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded864
import InitE.BackendStages.ZeroData864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets864_eq : Padded864.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys864 := by
  with_unfolding_all rfl
theorem zeroTargets864_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded864 acc = ZeroData.keys864.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets864_eq]
#print axioms zeroTargets864_eq
end InitE.BackendStages
