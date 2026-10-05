import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded484
import InitE.BackendStages.ZeroData484
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets484_eq : Padded484.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys484 := by
  with_unfolding_all rfl
theorem zeroTargets484_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded484 acc = ZeroData.keys484.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets484_eq]
#print axioms zeroTargets484_eq
end InitE.BackendStages
