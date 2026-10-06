import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded330
import InitE.BackendStages.ZeroData330
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets330_eq : Padded330.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys330 := by
  with_unfolding_all rfl
theorem zeroTargets330_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded330 acc = ZeroData.keys330.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets330_eq]
#print axioms zeroTargets330_eq
end InitE.BackendStages
