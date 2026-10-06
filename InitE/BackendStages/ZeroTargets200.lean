import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded200
import InitE.BackendStages.ZeroData200
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets200_eq : Padded200.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys200 := by
  with_unfolding_all rfl
theorem zeroTargets200_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded200 acc = ZeroData.keys200.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets200_eq]
#print axioms zeroTargets200_eq
end InitE.BackendStages
