import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded573
import InitE.BackendStages.ZeroData573
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets573_eq : Padded573.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys573 := by
  with_unfolding_all rfl
theorem zeroTargets573_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded573 acc = ZeroData.keys573.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets573_eq]
#print axioms zeroTargets573_eq
end InitE.BackendStages
