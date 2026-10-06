import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded747
import InitE.BackendStages.ZeroData747
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets747_eq : Padded747.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys747 := by
  with_unfolding_all rfl
theorem zeroTargets747_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded747 acc = ZeroData.keys747.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets747_eq]
#print axioms zeroTargets747_eq
end InitE.BackendStages
