import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded113
import InitE.BackendStages.ZeroData113
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets113_eq : Padded113.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys113 := by
  with_unfolding_all rfl
theorem zeroTargets113_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded113 acc = ZeroData.keys113.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets113_eq]
#print axioms zeroTargets113_eq
end InitE.BackendStages
