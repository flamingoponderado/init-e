import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded215
import InitE.BackendStages.ZeroData215
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets215_eq : Padded215.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys215 := by
  with_unfolding_all rfl
theorem zeroTargets215_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded215 acc = ZeroData.keys215.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets215_eq]
#print axioms zeroTargets215_eq
end InitE.BackendStages
