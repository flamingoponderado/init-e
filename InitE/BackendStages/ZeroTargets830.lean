import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded830
import InitE.BackendStages.ZeroData830
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets830_eq : Padded830.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys830 := by
  with_unfolding_all rfl
theorem zeroTargets830_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded830 acc = ZeroData.keys830.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets830_eq]
#print axioms zeroTargets830_eq
end InitE.BackendStages
