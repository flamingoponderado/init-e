import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded587
import InitE.BackendStages.ZeroData587
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets587_eq : Padded587.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys587 := by
  with_unfolding_all rfl
theorem zeroTargets587_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded587 acc = ZeroData.keys587.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets587_eq]
#print axioms zeroTargets587_eq
end InitE.BackendStages
