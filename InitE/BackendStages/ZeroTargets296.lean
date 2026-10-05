import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded296
import InitE.BackendStages.ZeroData296
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets296_eq : Padded296.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys296 := by
  with_unfolding_all rfl
theorem zeroTargets296_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded296 acc = ZeroData.keys296.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets296_eq]
#print axioms zeroTargets296_eq
end InitE.BackendStages
