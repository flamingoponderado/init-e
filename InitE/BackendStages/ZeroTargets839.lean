import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded839
import InitE.BackendStages.ZeroData839
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets839_eq : Padded839.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys839 := by
  with_unfolding_all rfl
theorem zeroTargets839_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded839 acc = ZeroData.keys839.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets839_eq]
#print axioms zeroTargets839_eq
end InitE.BackendStages
