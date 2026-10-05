import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded422
import InitE.BackendStages.ZeroData422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets422_eq : Padded422.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys422 := by
  with_unfolding_all rfl
theorem zeroTargets422_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded422 acc = ZeroData.keys422.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets422_eq]
#print axioms zeroTargets422_eq
end InitE.BackendStages
