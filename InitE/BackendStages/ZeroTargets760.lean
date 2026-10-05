import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded760
import InitE.BackendStages.ZeroData760
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets760_eq : Padded760.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys760 := by
  with_unfolding_all rfl
theorem zeroTargets760_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded760 acc = ZeroData.keys760.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets760_eq]
#print axioms zeroTargets760_eq
end InitE.BackendStages
