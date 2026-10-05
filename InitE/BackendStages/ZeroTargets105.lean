import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded105
import InitE.BackendStages.ZeroData105
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets105_eq : Padded105.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys105 := by
  with_unfolding_all rfl
theorem zeroTargets105_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded105 acc = ZeroData.keys105.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets105_eq]
#print axioms zeroTargets105_eq
end InitE.BackendStages
