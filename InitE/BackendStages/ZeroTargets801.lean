import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded801
import InitE.BackendStages.ZeroData801
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets801_eq : Padded801.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys801 := by
  with_unfolding_all rfl
theorem zeroTargets801_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded801 acc = ZeroData.keys801.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets801_eq]
#print axioms zeroTargets801_eq
end InitE.BackendStages
