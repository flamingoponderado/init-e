import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded526
import InitE.BackendStages.ZeroData526
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets526_eq : Padded526.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys526 := by
  with_unfolding_all rfl
theorem zeroTargets526_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded526 acc = ZeroData.keys526.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets526_eq]
#print axioms zeroTargets526_eq
end InitE.BackendStages
