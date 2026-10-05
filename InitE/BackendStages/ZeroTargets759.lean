import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded759
import InitE.BackendStages.ZeroData759
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets759_eq : Padded759.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys759 := by
  with_unfolding_all rfl
theorem zeroTargets759_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded759 acc = ZeroData.keys759.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets759_eq]
#print axioms zeroTargets759_eq
end InitE.BackendStages
