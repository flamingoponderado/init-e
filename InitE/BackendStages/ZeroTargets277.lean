import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded277
import InitE.BackendStages.ZeroData277
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets277_eq : Padded277.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys277 := by
  with_unfolding_all rfl
theorem zeroTargets277_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded277 acc = ZeroData.keys277.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets277_eq]
#print axioms zeroTargets277_eq
end InitE.BackendStages
