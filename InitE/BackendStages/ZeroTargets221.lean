import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded221
import InitE.BackendStages.ZeroData221
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets221_eq : Padded221.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys221 := by
  with_unfolding_all rfl
theorem zeroTargets221_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded221 acc = ZeroData.keys221.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets221_eq]
#print axioms zeroTargets221_eq
end InitE.BackendStages
