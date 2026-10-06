import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded671
import InitE.BackendStages.ZeroData671
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets671_eq : Padded671.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys671 := by
  with_unfolding_all rfl
theorem zeroTargets671_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded671 acc = ZeroData.keys671.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets671_eq]
#print axioms zeroTargets671_eq
end InitE.BackendStages
