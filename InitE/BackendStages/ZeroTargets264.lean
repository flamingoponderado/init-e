import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded264
import InitE.BackendStages.ZeroData264
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets264_eq : Padded264.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys264 := by
  with_unfolding_all rfl
theorem zeroTargets264_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded264 acc = ZeroData.keys264.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets264_eq]
#print axioms zeroTargets264_eq
end InitE.BackendStages
