import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded780
import InitE.BackendStages.ZeroData780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets780_eq : Padded780.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys780 := by
  with_unfolding_all rfl
theorem zeroTargets780_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded780 acc = ZeroData.keys780.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets780_eq]
#print axioms zeroTargets780_eq
end InitE.BackendStages
