import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded479
import InitE.BackendStages.ZeroData479
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets479_eq : Padded479.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys479 := by
  with_unfolding_all rfl
theorem zeroTargets479_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded479 acc = ZeroData.keys479.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets479_eq]
#print axioms zeroTargets479_eq
end InitE.BackendStages
