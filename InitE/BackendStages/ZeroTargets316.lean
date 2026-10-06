import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded316
import InitE.BackendStages.ZeroData316
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets316_eq : Padded316.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys316 := by
  with_unfolding_all rfl
theorem zeroTargets316_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded316 acc = ZeroData.keys316.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets316_eq]
#print axioms zeroTargets316_eq
end InitE.BackendStages
