import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded72
import InitE.BackendStages.ZeroData72
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets72_eq : Padded72.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys72 := by
  with_unfolding_all rfl
theorem zeroTargets72_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded72 acc = ZeroData.keys72.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets72_eq]
#print axioms zeroTargets72_eq
end InitE.BackendStages
