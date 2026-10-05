import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded380
import InitE.BackendStages.ZeroData380
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets380_eq : Padded380.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys380 := by
  with_unfolding_all rfl
theorem zeroTargets380_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded380 acc = ZeroData.keys380.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets380_eq]
#print axioms zeroTargets380_eq
end InitE.BackendStages
