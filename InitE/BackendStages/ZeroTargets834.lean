import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded834
import InitE.BackendStages.ZeroData834
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets834_eq : Padded834.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys834 := by
  with_unfolding_all rfl
theorem zeroTargets834_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded834 acc = ZeroData.keys834.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets834_eq]
#print axioms zeroTargets834_eq
end InitE.BackendStages
