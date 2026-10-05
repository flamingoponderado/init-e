import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded437
import InitE.BackendStages.ZeroData437
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets437_eq : Padded437.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys437 := by
  with_unfolding_all rfl
theorem zeroTargets437_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded437 acc = ZeroData.keys437.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets437_eq]
#print axioms zeroTargets437_eq
end InitE.BackendStages
