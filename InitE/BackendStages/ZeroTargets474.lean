import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded474
import InitE.BackendStages.ZeroData474
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets474_eq : Padded474.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys474 := by
  with_unfolding_all rfl
theorem zeroTargets474_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded474 acc = ZeroData.keys474.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets474_eq]
#print axioms zeroTargets474_eq
end InitE.BackendStages
