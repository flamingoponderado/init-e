import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded554
import InitE.BackendStages.ZeroData554
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets554_eq : Padded554.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys554 := by
  with_unfolding_all rfl
theorem zeroTargets554_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded554 acc = ZeroData.keys554.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets554_eq]
#print axioms zeroTargets554_eq
end InitE.BackendStages
