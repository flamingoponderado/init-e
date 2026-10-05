import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded301
import InitE.BackendStages.ZeroData301
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets301_eq : Padded301.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys301 := by
  with_unfolding_all rfl
theorem zeroTargets301_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded301 acc = ZeroData.keys301.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets301_eq]
#print axioms zeroTargets301_eq
end InitE.BackendStages
