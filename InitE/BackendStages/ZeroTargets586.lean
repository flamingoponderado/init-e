import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded586
import InitE.BackendStages.ZeroData586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets586_eq : Padded586.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys586 := by
  with_unfolding_all rfl
theorem zeroTargets586_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded586 acc = ZeroData.keys586.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets586_eq]
#print axioms zeroTargets586_eq
end InitE.BackendStages
