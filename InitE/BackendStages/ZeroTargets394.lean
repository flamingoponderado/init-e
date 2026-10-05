import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded394
import InitE.BackendStages.ZeroData394
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets394_eq : Padded394.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys394 := by
  with_unfolding_all rfl
theorem zeroTargets394_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded394 acc = ZeroData.keys394.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets394_eq]
#print axioms zeroTargets394_eq
end InitE.BackendStages
