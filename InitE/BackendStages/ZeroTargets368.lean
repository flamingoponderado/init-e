import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded368
import InitE.BackendStages.ZeroData368
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets368_eq : Padded368.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys368 := by
  with_unfolding_all rfl
theorem zeroTargets368_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded368 acc = ZeroData.keys368.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets368_eq]
#print axioms zeroTargets368_eq
end InitE.BackendStages
