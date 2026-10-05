import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded756
import InitE.BackendStages.ZeroData756
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets756_eq : Padded756.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys756 := by
  with_unfolding_all rfl
theorem zeroTargets756_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded756 acc = ZeroData.keys756.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets756_eq]
#print axioms zeroTargets756_eq
end InitE.BackendStages
