import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded603
import InitE.BackendStages.ZeroData603
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets603_eq : Padded603.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys603 := by
  with_unfolding_all rfl
theorem zeroTargets603_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded603 acc = ZeroData.keys603.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets603_eq]
#print axioms zeroTargets603_eq
end InitE.BackendStages
