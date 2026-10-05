import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded662
import InitE.BackendStages.ZeroData662
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets662_eq : Padded662.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys662 := by
  with_unfolding_all rfl
theorem zeroTargets662_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded662 acc = ZeroData.keys662.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets662_eq]
#print axioms zeroTargets662_eq
end InitE.BackendStages
