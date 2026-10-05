import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded619
import InitE.BackendStages.ZeroData619
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets619_eq : Padded619.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys619 := by
  with_unfolding_all rfl
theorem zeroTargets619_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded619 acc = ZeroData.keys619.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets619_eq]
#print axioms zeroTargets619_eq
end InitE.BackendStages
