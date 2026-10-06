import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded156
import InitE.BackendStages.ZeroData156
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets156_eq : Padded156.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys156 := by
  with_unfolding_all rfl
theorem zeroTargets156_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded156 acc = ZeroData.keys156.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets156_eq]
#print axioms zeroTargets156_eq
end InitE.BackendStages
