import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded300
import InitE.BackendStages.ZeroData300
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets300_eq : Padded300.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys300 := by
  with_unfolding_all rfl
theorem zeroTargets300_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded300 acc = ZeroData.keys300.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets300_eq]
#print axioms zeroTargets300_eq
end InitE.BackendStages
