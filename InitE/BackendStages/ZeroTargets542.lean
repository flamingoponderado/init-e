import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded542
import InitE.BackendStages.ZeroData542
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets542_eq : Padded542.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys542 := by
  with_unfolding_all rfl
theorem zeroTargets542_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded542 acc = ZeroData.keys542.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets542_eq]
#print axioms zeroTargets542_eq
end InitE.BackendStages
