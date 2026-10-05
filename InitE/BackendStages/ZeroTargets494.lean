import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded494
import InitE.BackendStages.ZeroData494
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets494_eq : Padded494.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys494 := by
  with_unfolding_all rfl
theorem zeroTargets494_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded494 acc = ZeroData.keys494.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets494_eq]
#print axioms zeroTargets494_eq
end InitE.BackendStages
