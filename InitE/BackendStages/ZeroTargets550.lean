import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded550
import InitE.BackendStages.ZeroData550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets550_eq : Padded550.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys550 := by
  with_unfolding_all rfl
theorem zeroTargets550_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded550 acc = ZeroData.keys550.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets550_eq]
#print axioms zeroTargets550_eq
end InitE.BackendStages
