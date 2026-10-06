import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded564
import InitE.BackendStages.ZeroData564
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets564_eq : Padded564.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys564 := by
  with_unfolding_all rfl
theorem zeroTargets564_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded564 acc = ZeroData.keys564.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets564_eq]
#print axioms zeroTargets564_eq
end InitE.BackendStages
