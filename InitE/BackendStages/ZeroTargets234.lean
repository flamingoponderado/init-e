import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded234
import InitE.BackendStages.ZeroData234
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets234_eq : Padded234.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys234 := by
  with_unfolding_all rfl
theorem zeroTargets234_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded234 acc = ZeroData.keys234.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets234_eq]
#print axioms zeroTargets234_eq
end InitE.BackendStages
