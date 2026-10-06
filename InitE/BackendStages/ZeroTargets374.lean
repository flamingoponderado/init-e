import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded374
import InitE.BackendStages.ZeroData374
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets374_eq : Padded374.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys374 := by
  with_unfolding_all rfl
theorem zeroTargets374_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded374 acc = ZeroData.keys374.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets374_eq]
#print axioms zeroTargets374_eq
end InitE.BackendStages
