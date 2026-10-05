import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded559
import InitE.BackendStages.ZeroData559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets559_eq : Padded559.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys559 := by
  with_unfolding_all rfl
theorem zeroTargets559_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded559 acc = ZeroData.keys559.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets559_eq]
#print axioms zeroTargets559_eq
end InitE.BackendStages
