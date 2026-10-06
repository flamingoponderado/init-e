import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded346
import InitE.BackendStages.ZeroData346
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets346_eq : Padded346.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys346 := by
  with_unfolding_all rfl
theorem zeroTargets346_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded346 acc = ZeroData.keys346.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets346_eq]
#print axioms zeroTargets346_eq
end InitE.BackendStages
