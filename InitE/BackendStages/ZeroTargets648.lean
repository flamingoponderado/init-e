import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded648
import InitE.BackendStages.ZeroData648
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets648_eq : Padded648.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys648 := by
  with_unfolding_all rfl
theorem zeroTargets648_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded648 acc = ZeroData.keys648.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets648_eq]
#print axioms zeroTargets648_eq
end InitE.BackendStages
