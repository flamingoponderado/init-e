import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded365
import InitE.BackendStages.ZeroData365
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets365_eq : Padded365.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys365 := by
  with_unfolding_all rfl
theorem zeroTargets365_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded365 acc = ZeroData.keys365.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets365_eq]
#print axioms zeroTargets365_eq
end InitE.BackendStages
