import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded724
import InitE.BackendStages.ZeroData724
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets724_eq : Padded724.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys724 := by
  with_unfolding_all rfl
theorem zeroTargets724_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded724 acc = ZeroData.keys724.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets724_eq]
#print axioms zeroTargets724_eq
end InitE.BackendStages
