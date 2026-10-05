import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded403
import InitE.BackendStages.ZeroData403
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets403_eq : Padded403.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys403 := by
  with_unfolding_all rfl
theorem zeroTargets403_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded403 acc = ZeroData.keys403.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets403_eq]
#print axioms zeroTargets403_eq
end InitE.BackendStages
