import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded460
import InitE.BackendStages.ZeroData460
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets460_eq : Padded460.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys460 := by
  with_unfolding_all rfl
theorem zeroTargets460_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded460 acc = ZeroData.keys460.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets460_eq]
#print axioms zeroTargets460_eq
end InitE.BackendStages
