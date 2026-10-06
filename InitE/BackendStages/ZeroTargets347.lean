import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded347
import InitE.BackendStages.ZeroData347
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets347_eq : Padded347.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys347 := by
  with_unfolding_all rfl
theorem zeroTargets347_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded347 acc = ZeroData.keys347.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets347_eq]
#print axioms zeroTargets347_eq
end InitE.BackendStages
