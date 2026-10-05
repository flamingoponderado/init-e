import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded388
import InitE.BackendStages.ZeroData388
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets388_eq : Padded388.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys388 := by
  with_unfolding_all rfl
theorem zeroTargets388_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded388 acc = ZeroData.keys388.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets388_eq]
#print axioms zeroTargets388_eq
end InitE.BackendStages
