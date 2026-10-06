import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded266
import InitE.BackendStages.ZeroData266
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets266_eq : Padded266.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys266 := by
  with_unfolding_all rfl
theorem zeroTargets266_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded266 acc = ZeroData.keys266.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets266_eq]
#print axioms zeroTargets266_eq
end InitE.BackendStages
