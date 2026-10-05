import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded649
import InitE.BackendStages.ZeroData649
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets649_eq : Padded649.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys649 := by
  with_unfolding_all rfl
theorem zeroTargets649_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded649 acc = ZeroData.keys649.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets649_eq]
#print axioms zeroTargets649_eq
end InitE.BackendStages
