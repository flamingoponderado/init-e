import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded327
import InitE.BackendStages.ZeroData327
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets327_eq : Padded327.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys327 := by
  with_unfolding_all rfl
theorem zeroTargets327_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded327 acc = ZeroData.keys327.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets327_eq]
#print axioms zeroTargets327_eq
end InitE.BackendStages
