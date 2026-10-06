import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded588
import InitE.BackendStages.ZeroData588
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets588_eq : Padded588.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys588 := by
  with_unfolding_all rfl
theorem zeroTargets588_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded588 acc = ZeroData.keys588.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets588_eq]
#print axioms zeroTargets588_eq
end InitE.BackendStages
