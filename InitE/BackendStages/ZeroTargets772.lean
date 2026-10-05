import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded772
import InitE.BackendStages.ZeroData772
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets772_eq : Padded772.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys772 := by
  with_unfolding_all rfl
theorem zeroTargets772_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded772 acc = ZeroData.keys772.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets772_eq]
#print axioms zeroTargets772_eq
end InitE.BackendStages
