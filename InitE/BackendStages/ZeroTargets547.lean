import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded547
import InitE.BackendStages.ZeroData547
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets547_eq : Padded547.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys547 := by
  with_unfolding_all rfl
theorem zeroTargets547_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded547 acc = ZeroData.keys547.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets547_eq]
#print axioms zeroTargets547_eq
end InitE.BackendStages
