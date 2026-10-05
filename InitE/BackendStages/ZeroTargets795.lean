import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded795
import InitE.BackendStages.ZeroData795
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets795_eq : Padded795.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys795 := by
  with_unfolding_all rfl
theorem zeroTargets795_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded795 acc = ZeroData.keys795.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets795_eq]
#print axioms zeroTargets795_eq
end InitE.BackendStages
