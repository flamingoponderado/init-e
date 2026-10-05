import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded844
import InitE.BackendStages.ZeroData844
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets844_eq : Padded844.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys844 := by
  with_unfolding_all rfl
theorem zeroTargets844_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded844 acc = ZeroData.keys844.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets844_eq]
#print axioms zeroTargets844_eq
end InitE.BackendStages
