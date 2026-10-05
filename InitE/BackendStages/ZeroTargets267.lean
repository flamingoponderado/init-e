import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded267
import InitE.BackendStages.ZeroData267
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets267_eq : Padded267.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys267 := by
  with_unfolding_all rfl
theorem zeroTargets267_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded267 acc = ZeroData.keys267.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets267_eq]
#print axioms zeroTargets267_eq
end InitE.BackendStages
