import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded91
import InitE.BackendStages.ZeroData91
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets91_eq : Padded91.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys91 := by
  with_unfolding_all rfl
theorem zeroTargets91_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded91 acc = ZeroData.keys91.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets91_eq]
#print axioms zeroTargets91_eq
end InitE.BackendStages
