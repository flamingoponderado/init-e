import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded548
import InitE.BackendStages.ZeroData548
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets548_eq : Padded548.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys548 := by
  with_unfolding_all rfl
theorem zeroTargets548_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded548 acc = ZeroData.keys548.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets548_eq]
#print axioms zeroTargets548_eq
end InitE.BackendStages
