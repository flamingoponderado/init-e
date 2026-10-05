import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded438
import InitE.BackendStages.ZeroData438
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets438_eq : Padded438.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys438 := by
  with_unfolding_all rfl
theorem zeroTargets438_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded438 acc = ZeroData.keys438.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets438_eq]
#print axioms zeroTargets438_eq
end InitE.BackendStages
