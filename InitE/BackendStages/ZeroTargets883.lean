import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded883
import InitE.BackendStages.ZeroData883
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets883_eq : Padded883.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys883 := by
  with_unfolding_all rfl
theorem zeroTargets883_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded883 acc = ZeroData.keys883.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets883_eq]
#print axioms zeroTargets883_eq
end InitE.BackendStages
