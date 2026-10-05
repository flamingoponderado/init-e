import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded206
import InitE.BackendStages.ZeroData206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets206_eq : Padded206.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys206 := by
  with_unfolding_all rfl
theorem zeroTargets206_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded206 acc = ZeroData.keys206.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets206_eq]
#print axioms zeroTargets206_eq
end InitE.BackendStages
