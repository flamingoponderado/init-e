import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded777
import InitE.BackendStages.ZeroData777
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets777_eq : Padded777.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys777 := by
  with_unfolding_all rfl
theorem zeroTargets777_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded777 acc = ZeroData.keys777.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets777_eq]
#print axioms zeroTargets777_eq
end InitE.BackendStages
