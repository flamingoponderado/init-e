import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded224
import InitE.BackendStages.ZeroData224
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets224_eq : Padded224.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys224 := by
  with_unfolding_all rfl
theorem zeroTargets224_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded224 acc = ZeroData.keys224.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets224_eq]
#print axioms zeroTargets224_eq
end InitE.BackendStages
