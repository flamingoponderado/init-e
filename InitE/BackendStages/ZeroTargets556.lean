import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded556
import InitE.BackendStages.ZeroData556
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets556_eq : Padded556.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys556 := by
  with_unfolding_all rfl
theorem zeroTargets556_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded556 acc = ZeroData.keys556.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets556_eq]
#print axioms zeroTargets556_eq
end InitE.BackendStages
