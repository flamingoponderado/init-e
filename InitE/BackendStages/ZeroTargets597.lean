import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded597
import InitE.BackendStages.ZeroData597
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets597_eq : Padded597.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys597 := by
  with_unfolding_all rfl
theorem zeroTargets597_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded597 acc = ZeroData.keys597.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets597_eq]
#print axioms zeroTargets597_eq
end InitE.BackendStages
