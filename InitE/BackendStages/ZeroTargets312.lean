import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded312
import InitE.BackendStages.ZeroData312
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets312_eq : Padded312.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys312 := by
  with_unfolding_all rfl
theorem zeroTargets312_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded312 acc = ZeroData.keys312.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets312_eq]
#print axioms zeroTargets312_eq
end InitE.BackendStages
