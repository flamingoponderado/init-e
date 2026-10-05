import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded672
import InitE.BackendStages.ZeroData672
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets672_eq : Padded672.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys672 := by
  with_unfolding_all rfl
theorem zeroTargets672_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded672 acc = ZeroData.keys672.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets672_eq]
#print axioms zeroTargets672_eq
end InitE.BackendStages
