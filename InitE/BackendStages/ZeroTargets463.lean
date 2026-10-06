import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded463
import InitE.BackendStages.ZeroData463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets463_eq : Padded463.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys463 := by
  with_unfolding_all rfl
theorem zeroTargets463_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded463 acc = ZeroData.keys463.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets463_eq]
#print axioms zeroTargets463_eq
end InitE.BackendStages
