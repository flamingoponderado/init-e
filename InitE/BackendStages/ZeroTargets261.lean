import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded261
import InitE.BackendStages.ZeroData261
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets261_eq : Padded261.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys261 := by
  with_unfolding_all rfl
theorem zeroTargets261_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded261 acc = ZeroData.keys261.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets261_eq]
#print axioms zeroTargets261_eq
end InitE.BackendStages
