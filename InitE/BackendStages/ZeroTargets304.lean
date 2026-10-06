import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded304
import InitE.BackendStages.ZeroData304
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets304_eq : Padded304.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys304 := by
  with_unfolding_all rfl
theorem zeroTargets304_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded304 acc = ZeroData.keys304.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets304_eq]
#print axioms zeroTargets304_eq
end InitE.BackendStages
