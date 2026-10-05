import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded538
import InitE.BackendStages.ZeroData538
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets538_eq : Padded538.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys538 := by
  with_unfolding_all rfl
theorem zeroTargets538_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded538 acc = ZeroData.keys538.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets538_eq]
#print axioms zeroTargets538_eq
end InitE.BackendStages
