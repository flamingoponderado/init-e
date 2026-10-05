import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded715
import InitE.BackendStages.ZeroData715
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets715_eq : Padded715.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys715 := by
  with_unfolding_all rfl
theorem zeroTargets715_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded715 acc = ZeroData.keys715.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets715_eq]
#print axioms zeroTargets715_eq
end InitE.BackendStages
