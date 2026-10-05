import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded244
import InitE.BackendStages.ZeroData244
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets244_eq : Padded244.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys244 := by
  with_unfolding_all rfl
theorem zeroTargets244_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded244 acc = ZeroData.keys244.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets244_eq]
#print axioms zeroTargets244_eq
end InitE.BackendStages
