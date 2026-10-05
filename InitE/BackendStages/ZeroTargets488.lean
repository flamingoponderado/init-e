import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded488
import InitE.BackendStages.ZeroData488
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets488_eq : Padded488.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys488 := by
  with_unfolding_all rfl
theorem zeroTargets488_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded488 acc = ZeroData.keys488.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets488_eq]
#print axioms zeroTargets488_eq
end InitE.BackendStages
