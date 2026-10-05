import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded814
import InitE.BackendStages.ZeroData814
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets814_eq : Padded814.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys814 := by
  with_unfolding_all rfl
theorem zeroTargets814_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded814 acc = ZeroData.keys814.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets814_eq]
#print axioms zeroTargets814_eq
end InitE.BackendStages
