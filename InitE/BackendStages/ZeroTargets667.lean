import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded667
import InitE.BackendStages.ZeroData667
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets667_eq : Padded667.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys667 := by
  with_unfolding_all rfl
theorem zeroTargets667_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded667 acc = ZeroData.keys667.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets667_eq]
#print axioms zeroTargets667_eq
end InitE.BackendStages
