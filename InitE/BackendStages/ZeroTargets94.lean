import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded94
import InitE.BackendStages.ZeroData94
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets94_eq : Padded94.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys94 := by
  with_unfolding_all rfl
theorem zeroTargets94_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded94 acc = ZeroData.keys94.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets94_eq]
#print axioms zeroTargets94_eq
end InitE.BackendStages
