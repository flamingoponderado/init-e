import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded540
import InitE.BackendStages.ZeroData540
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets540_eq : Padded540.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys540 := by
  with_unfolding_all rfl
theorem zeroTargets540_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded540 acc = ZeroData.keys540.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets540_eq]
#print axioms zeroTargets540_eq
end InitE.BackendStages
