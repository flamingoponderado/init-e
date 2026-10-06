import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded785
import InitE.BackendStages.ZeroData785
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets785_eq : Padded785.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys785 := by
  with_unfolding_all rfl
theorem zeroTargets785_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded785 acc = ZeroData.keys785.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets785_eq]
#print axioms zeroTargets785_eq
end InitE.BackendStages
