import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded886
import InitE.BackendStages.ZeroData886
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets886_eq : Padded886.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys886 := by
  with_unfolding_all rfl
theorem zeroTargets886_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded886 acc = ZeroData.keys886.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets886_eq]
#print axioms zeroTargets886_eq
end InitE.BackendStages
