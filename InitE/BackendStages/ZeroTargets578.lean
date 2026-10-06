import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded578
import InitE.BackendStages.ZeroData578
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets578_eq : Padded578.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys578 := by
  with_unfolding_all rfl
theorem zeroTargets578_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded578 acc = ZeroData.keys578.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets578_eq]
#print axioms zeroTargets578_eq
end InitE.BackendStages
