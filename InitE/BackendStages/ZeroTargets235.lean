import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded235
import InitE.BackendStages.ZeroData235
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets235_eq : Padded235.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys235 := by
  with_unfolding_all rfl
theorem zeroTargets235_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded235 acc = ZeroData.keys235.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets235_eq]
#print axioms zeroTargets235_eq
end InitE.BackendStages
