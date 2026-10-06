import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded670
import InitE.BackendStages.ZeroData670
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets670_eq : Padded670.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys670 := by
  with_unfolding_all rfl
theorem zeroTargets670_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded670 acc = ZeroData.keys670.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets670_eq]
#print axioms zeroTargets670_eq
end InitE.BackendStages
