import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded75
import InitE.BackendStages.ZeroData75
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets75_eq : Padded75.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys75 := by
  with_unfolding_all rfl
theorem zeroTargets75_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded75 acc = ZeroData.keys75.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets75_eq]
#print axioms zeroTargets75_eq
end InitE.BackendStages
