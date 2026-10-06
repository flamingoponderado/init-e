import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded151
import InitE.BackendStages.ZeroData151
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets151_eq : Padded151.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys151 := by
  with_unfolding_all rfl
theorem zeroTargets151_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded151 acc = ZeroData.keys151.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets151_eq]
#print axioms zeroTargets151_eq
end InitE.BackendStages
