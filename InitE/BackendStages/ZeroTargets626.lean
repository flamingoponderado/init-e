import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded626
import InitE.BackendStages.ZeroData626
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets626_eq : Padded626.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys626 := by
  with_unfolding_all rfl
theorem zeroTargets626_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded626 acc = ZeroData.keys626.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets626_eq]
#print axioms zeroTargets626_eq
end InitE.BackendStages
