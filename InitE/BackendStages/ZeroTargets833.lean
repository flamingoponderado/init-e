import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded833
import InitE.BackendStages.ZeroData833
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets833_eq : Padded833.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys833 := by
  with_unfolding_all rfl
theorem zeroTargets833_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded833 acc = ZeroData.keys833.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets833_eq]
#print axioms zeroTargets833_eq
end InitE.BackendStages
