import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded325
import InitE.BackendStages.ZeroData325
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets325_eq : Padded325.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys325 := by
  with_unfolding_all rfl
theorem zeroTargets325_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded325 acc = ZeroData.keys325.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets325_eq]
#print axioms zeroTargets325_eq
end InitE.BackendStages
