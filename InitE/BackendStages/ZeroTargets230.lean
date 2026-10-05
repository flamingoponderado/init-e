import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded230
import InitE.BackendStages.ZeroData230
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets230_eq : Padded230.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys230 := by
  with_unfolding_all rfl
theorem zeroTargets230_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded230 acc = ZeroData.keys230.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets230_eq]
#print axioms zeroTargets230_eq
end InitE.BackendStages
