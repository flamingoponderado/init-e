import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded148
import InitE.BackendStages.ZeroData148
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets148_eq : Padded148.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys148 := by
  with_unfolding_all rfl
theorem zeroTargets148_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded148 acc = ZeroData.keys148.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets148_eq]
#print axioms zeroTargets148_eq
end InitE.BackendStages
