import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded773
import InitE.BackendStages.ZeroData773
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets773_eq : Padded773.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys773 := by
  with_unfolding_all rfl
theorem zeroTargets773_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded773 acc = ZeroData.keys773.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets773_eq]
#print axioms zeroTargets773_eq
end InitE.BackendStages
