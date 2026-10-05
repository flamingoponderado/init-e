import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded469
import InitE.BackendStages.ZeroData469
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets469_eq : Padded469.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys469 := by
  with_unfolding_all rfl
theorem zeroTargets469_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded469 acc = ZeroData.keys469.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets469_eq]
#print axioms zeroTargets469_eq
end InitE.BackendStages
