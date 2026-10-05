import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded582
import InitE.BackendStages.ZeroData582
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets582_eq : Padded582.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys582 := by
  with_unfolding_all rfl
theorem zeroTargets582_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded582 acc = ZeroData.keys582.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets582_eq]
#print axioms zeroTargets582_eq
end InitE.BackendStages
