import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded92
import InitE.BackendStages.ZeroData92
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets92_eq : Padded92.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys92 := by
  with_unfolding_all rfl
theorem zeroTargets92_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded92 acc = ZeroData.keys92.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets92_eq]
#print axioms zeroTargets92_eq
end InitE.BackendStages
