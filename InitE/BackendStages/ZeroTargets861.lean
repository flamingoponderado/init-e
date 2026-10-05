import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded861
import InitE.BackendStages.ZeroData861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets861_eq : Padded861.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys861 := by
  with_unfolding_all rfl
theorem zeroTargets861_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded861 acc = ZeroData.keys861.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets861_eq]
#print axioms zeroTargets861_eq
end InitE.BackendStages
