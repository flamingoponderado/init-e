import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded493
import InitE.BackendStages.ZeroData493
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets493_eq : Padded493.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys493 := by
  with_unfolding_all rfl
theorem zeroTargets493_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded493 acc = ZeroData.keys493.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets493_eq]
#print axioms zeroTargets493_eq
end InitE.BackendStages
