import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded741
import InitE.BackendStages.ZeroData741
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets741_eq : Padded741.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys741 := by
  with_unfolding_all rfl
theorem zeroTargets741_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded741 acc = ZeroData.keys741.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets741_eq]
#print axioms zeroTargets741_eq
end InitE.BackendStages
