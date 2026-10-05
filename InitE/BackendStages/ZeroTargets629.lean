import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded629
import InitE.BackendStages.ZeroData629
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets629_eq : Padded629.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys629 := by
  with_unfolding_all rfl
theorem zeroTargets629_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded629 acc = ZeroData.keys629.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets629_eq]
#print axioms zeroTargets629_eq
end InitE.BackendStages
