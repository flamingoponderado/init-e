import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded85
import InitE.BackendStages.ZeroData85
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets85_eq : Padded85.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys85 := by
  with_unfolding_all rfl
theorem zeroTargets85_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded85 acc = ZeroData.keys85.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets85_eq]
#print axioms zeroTargets85_eq
end InitE.BackendStages
