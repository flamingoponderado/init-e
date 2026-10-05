import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded149
import InitE.BackendStages.ZeroData149
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets149_eq : Padded149.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys149 := by
  with_unfolding_all rfl
theorem zeroTargets149_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded149 acc = ZeroData.keys149.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets149_eq]
#print axioms zeroTargets149_eq
end InitE.BackendStages
