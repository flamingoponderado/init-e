import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded372
import InitE.BackendStages.ZeroData372
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets372_eq : Padded372.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys372 := by
  with_unfolding_all rfl
theorem zeroTargets372_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded372 acc = ZeroData.keys372.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets372_eq]
#print axioms zeroTargets372_eq
end InitE.BackendStages
