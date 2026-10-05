import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded731
import InitE.BackendStages.ZeroData731
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets731_eq : Padded731.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys731 := by
  with_unfolding_all rfl
theorem zeroTargets731_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded731 acc = ZeroData.keys731.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets731_eq]
#print axioms zeroTargets731_eq
end InitE.BackendStages
