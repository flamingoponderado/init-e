import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded119
import InitE.BackendStages.ZeroData119
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets119_eq : Padded119.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys119 := by
  with_unfolding_all rfl
theorem zeroTargets119_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded119 acc = ZeroData.keys119.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets119_eq]
#print axioms zeroTargets119_eq
end InitE.BackendStages
