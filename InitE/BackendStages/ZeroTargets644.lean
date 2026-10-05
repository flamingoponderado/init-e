import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded644
import InitE.BackendStages.ZeroData644
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets644_eq : Padded644.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys644 := by
  with_unfolding_all rfl
theorem zeroTargets644_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded644 acc = ZeroData.keys644.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets644_eq]
#print axioms zeroTargets644_eq
end InitE.BackendStages
