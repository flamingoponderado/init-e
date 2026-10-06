import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded445
import InitE.BackendStages.ZeroData445
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets445_eq : Padded445.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys445 := by
  with_unfolding_all rfl
theorem zeroTargets445_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded445 acc = ZeroData.keys445.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets445_eq]
#print axioms zeroTargets445_eq
end InitE.BackendStages
