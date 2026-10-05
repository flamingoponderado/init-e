import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded828
import InitE.BackendStages.ZeroData828
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets828_eq : Padded828.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys828 := by
  with_unfolding_all rfl
theorem zeroTargets828_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded828 acc = ZeroData.keys828.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets828_eq]
#print axioms zeroTargets828_eq
end InitE.BackendStages
