import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded541
import InitE.BackendStages.ZeroData541
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets541_eq : Padded541.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys541 := by
  with_unfolding_all rfl
theorem zeroTargets541_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded541 acc = ZeroData.keys541.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets541_eq]
#print axioms zeroTargets541_eq
end InitE.BackendStages
