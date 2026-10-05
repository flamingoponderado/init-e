import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded476
import InitE.BackendStages.ZeroData476
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets476_eq : Padded476.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys476 := by
  with_unfolding_all rfl
theorem zeroTargets476_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded476 acc = ZeroData.keys476.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets476_eq]
#print axioms zeroTargets476_eq
end InitE.BackendStages
