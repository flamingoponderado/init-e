import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded142
import InitE.BackendStages.ZeroData142
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets142_eq : Padded142.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys142 := by
  with_unfolding_all rfl
theorem zeroTargets142_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded142 acc = ZeroData.keys142.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets142_eq]
#print axioms zeroTargets142_eq
end InitE.BackendStages
