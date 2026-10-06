import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded285
import InitE.BackendStages.ZeroData285
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets285_eq : Padded285.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys285 := by
  with_unfolding_all rfl
theorem zeroTargets285_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded285 acc = ZeroData.keys285.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets285_eq]
#print axioms zeroTargets285_eq
end InitE.BackendStages
