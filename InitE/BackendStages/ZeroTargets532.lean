import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded532
import InitE.BackendStages.ZeroData532
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets532_eq : Padded532.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys532 := by
  with_unfolding_all rfl
theorem zeroTargets532_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded532 acc = ZeroData.keys532.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets532_eq]
#print axioms zeroTargets532_eq
end InitE.BackendStages
