import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded713
import InitE.BackendStages.ZeroData713
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets713_eq : Padded713.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys713 := by
  with_unfolding_all rfl
theorem zeroTargets713_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded713 acc = ZeroData.keys713.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets713_eq]
#print axioms zeroTargets713_eq
end InitE.BackendStages
