import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded497
import InitE.BackendStages.ZeroData497
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets497_eq : Padded497.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys497 := by
  with_unfolding_all rfl
theorem zeroTargets497_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded497 acc = ZeroData.keys497.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets497_eq]
#print axioms zeroTargets497_eq
end InitE.BackendStages
