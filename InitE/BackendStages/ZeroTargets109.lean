import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded109
import InitE.BackendStages.ZeroData109
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets109_eq : Padded109.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys109 := by
  with_unfolding_all rfl
theorem zeroTargets109_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded109 acc = ZeroData.keys109.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets109_eq]
#print axioms zeroTargets109_eq
end InitE.BackendStages
