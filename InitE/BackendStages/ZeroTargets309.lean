import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded309
import InitE.BackendStages.ZeroData309
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets309_eq : Padded309.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys309 := by
  with_unfolding_all rfl
theorem zeroTargets309_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded309 acc = ZeroData.keys309.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets309_eq]
#print axioms zeroTargets309_eq
end InitE.BackendStages
