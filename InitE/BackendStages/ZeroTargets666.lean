import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded666
import InitE.BackendStages.ZeroData666
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets666_eq : Padded666.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys666 := by
  with_unfolding_all rfl
theorem zeroTargets666_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded666 acc = ZeroData.keys666.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets666_eq]
#print axioms zeroTargets666_eq
end InitE.BackendStages
