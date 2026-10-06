import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded478
import InitE.BackendStages.ZeroData478
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets478_eq : Padded478.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys478 := by
  with_unfolding_all rfl
theorem zeroTargets478_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded478 acc = ZeroData.keys478.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets478_eq]
#print axioms zeroTargets478_eq
end InitE.BackendStages
