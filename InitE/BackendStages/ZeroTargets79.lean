import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded79
import InitE.BackendStages.ZeroData79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets79_eq : Padded79.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys79 := by
  with_unfolding_all rfl
theorem zeroTargets79_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded79 acc = ZeroData.keys79.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets79_eq]
#print axioms zeroTargets79_eq
end InitE.BackendStages
