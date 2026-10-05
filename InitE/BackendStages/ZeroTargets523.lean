import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded523
import InitE.BackendStages.ZeroData523
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets523_eq : Padded523.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys523 := by
  with_unfolding_all rfl
theorem zeroTargets523_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded523 acc = ZeroData.keys523.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets523_eq]
#print axioms zeroTargets523_eq
end InitE.BackendStages
