import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded370
import InitE.BackendStages.ZeroData370
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets370_eq : Padded370.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys370 := by
  with_unfolding_all rfl
theorem zeroTargets370_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded370 acc = ZeroData.keys370.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets370_eq]
#print axioms zeroTargets370_eq
end InitE.BackendStages
