import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded874
import InitE.BackendStages.ZeroData874
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets874_eq : Padded874.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys874 := by
  with_unfolding_all rfl
theorem zeroTargets874_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded874 acc = ZeroData.keys874.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets874_eq]
#print axioms zeroTargets874_eq
end InitE.BackendStages
