import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded729
import InitE.BackendStages.ZeroData729
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets729_eq : Padded729.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys729 := by
  with_unfolding_all rfl
theorem zeroTargets729_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded729 acc = ZeroData.keys729.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets729_eq]
#print axioms zeroTargets729_eq
end InitE.BackendStages
