import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded643
import InitE.BackendStages.ZeroData643
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets643_eq : Padded643.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys643 := by
  with_unfolding_all rfl
theorem zeroTargets643_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded643 acc = ZeroData.keys643.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets643_eq]
#print axioms zeroTargets643_eq
end InitE.BackendStages
