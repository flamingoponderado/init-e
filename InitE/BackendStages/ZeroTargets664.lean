import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded664
import InitE.BackendStages.ZeroData664
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets664_eq : Padded664.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys664 := by
  with_unfolding_all rfl
theorem zeroTargets664_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded664 acc = ZeroData.keys664.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets664_eq]
#print axioms zeroTargets664_eq
end InitE.BackendStages
