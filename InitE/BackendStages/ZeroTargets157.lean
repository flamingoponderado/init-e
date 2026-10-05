import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded157
import InitE.BackendStages.ZeroData157
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets157_eq : Padded157.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys157 := by
  with_unfolding_all rfl
theorem zeroTargets157_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded157 acc = ZeroData.keys157.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets157_eq]
#print axioms zeroTargets157_eq
end InitE.BackendStages
