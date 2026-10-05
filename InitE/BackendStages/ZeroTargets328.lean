import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded328
import InitE.BackendStages.ZeroData328
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets328_eq : Padded328.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys328 := by
  with_unfolding_all rfl
theorem zeroTargets328_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded328 acc = ZeroData.keys328.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets328_eq]
#print axioms zeroTargets328_eq
end InitE.BackendStages
