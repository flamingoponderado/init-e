import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded854
import InitE.BackendStages.ZeroData854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets854_eq : Padded854.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys854 := by
  with_unfolding_all rfl
theorem zeroTargets854_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded854 acc = ZeroData.keys854.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets854_eq]
#print axioms zeroTargets854_eq
end InitE.BackendStages
