import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded424
import InitE.BackendStages.ZeroData424
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets424_eq : Padded424.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys424 := by
  with_unfolding_all rfl
theorem zeroTargets424_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded424 acc = ZeroData.keys424.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets424_eq]
#print axioms zeroTargets424_eq
end InitE.BackendStages
