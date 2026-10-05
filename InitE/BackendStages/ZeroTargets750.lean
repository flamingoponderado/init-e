import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded750
import InitE.BackendStages.ZeroData750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets750_eq : Padded750.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys750 := by
  with_unfolding_all rfl
theorem zeroTargets750_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded750 acc = ZeroData.keys750.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets750_eq]
#print axioms zeroTargets750_eq
end InitE.BackendStages
