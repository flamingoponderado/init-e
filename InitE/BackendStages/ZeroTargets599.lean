import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded599
import InitE.BackendStages.ZeroData599
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets599_eq : Padded599.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys599 := by
  with_unfolding_all rfl
theorem zeroTargets599_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded599 acc = ZeroData.keys599.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets599_eq]
#print axioms zeroTargets599_eq
end InitE.BackendStages
