import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded736
import InitE.BackendStages.ZeroData736
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets736_eq : Padded736.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys736 := by
  with_unfolding_all rfl
theorem zeroTargets736_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded736 acc = ZeroData.keys736.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets736_eq]
#print axioms zeroTargets736_eq
end InitE.BackendStages
