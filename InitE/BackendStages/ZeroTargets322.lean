import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded322
import InitE.BackendStages.ZeroData322
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets322_eq : Padded322.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys322 := by
  with_unfolding_all rfl
theorem zeroTargets322_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded322 acc = ZeroData.keys322.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets322_eq]
#print axioms zeroTargets322_eq
end InitE.BackendStages
