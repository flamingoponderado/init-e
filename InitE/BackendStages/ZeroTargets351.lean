import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded351
import InitE.BackendStages.ZeroData351
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets351_eq : Padded351.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys351 := by
  with_unfolding_all rfl
theorem zeroTargets351_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded351 acc = ZeroData.keys351.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets351_eq]
#print axioms zeroTargets351_eq
end InitE.BackendStages
