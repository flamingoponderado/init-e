import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded73
import InitE.BackendStages.ZeroData73
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets73_eq : Padded73.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys73 := by
  with_unfolding_all rfl
theorem zeroTargets73_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded73 acc = ZeroData.keys73.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets73_eq]
#print axioms zeroTargets73_eq
end InitE.BackendStages
