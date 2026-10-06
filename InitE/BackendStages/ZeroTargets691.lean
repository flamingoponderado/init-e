import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded691
import InitE.BackendStages.ZeroData691
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets691_eq : Padded691.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys691 := by
  with_unfolding_all rfl
theorem zeroTargets691_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded691 acc = ZeroData.keys691.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets691_eq]
#print axioms zeroTargets691_eq
end InitE.BackendStages
