import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded811
import InitE.BackendStages.ZeroData811
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets811_eq : Padded811.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys811 := by
  with_unfolding_all rfl
theorem zeroTargets811_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded811 acc = ZeroData.keys811.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets811_eq]
#print axioms zeroTargets811_eq
end InitE.BackendStages
