import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded287
import InitE.BackendStages.ZeroData287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets287_eq : Padded287.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys287 := by
  with_unfolding_all rfl
theorem zeroTargets287_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded287 acc = ZeroData.keys287.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets287_eq]
#print axioms zeroTargets287_eq
end InitE.BackendStages
