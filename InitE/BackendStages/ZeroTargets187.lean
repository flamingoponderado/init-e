import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded187
import InitE.BackendStages.ZeroData187
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets187_eq : Padded187.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys187 := by
  with_unfolding_all rfl
theorem zeroTargets187_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded187 acc = ZeroData.keys187.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets187_eq]
#print axioms zeroTargets187_eq
end InitE.BackendStages
