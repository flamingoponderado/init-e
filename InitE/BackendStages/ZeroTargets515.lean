import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded515
import InitE.BackendStages.ZeroData515
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets515_eq : Padded515.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys515 := by
  with_unfolding_all rfl
theorem zeroTargets515_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded515 acc = ZeroData.keys515.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets515_eq]
#print axioms zeroTargets515_eq
end InitE.BackendStages
