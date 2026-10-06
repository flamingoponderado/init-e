import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded154
import InitE.BackendStages.ZeroData154
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets154_eq : Padded154.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys154 := by
  with_unfolding_all rfl
theorem zeroTargets154_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded154 acc = ZeroData.keys154.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets154_eq]
#print axioms zeroTargets154_eq
end InitE.BackendStages
