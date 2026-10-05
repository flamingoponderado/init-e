import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded158
import InitE.BackendStages.ZeroData158
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets158_eq : Padded158.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys158 := by
  with_unfolding_all rfl
theorem zeroTargets158_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded158 acc = ZeroData.keys158.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets158_eq]
#print axioms zeroTargets158_eq
end InitE.BackendStages
