import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded464
import InitE.BackendStages.ZeroData464
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets464_eq : Padded464.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys464 := by
  with_unfolding_all rfl
theorem zeroTargets464_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded464 acc = ZeroData.keys464.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets464_eq]
#print axioms zeroTargets464_eq
end InitE.BackendStages
