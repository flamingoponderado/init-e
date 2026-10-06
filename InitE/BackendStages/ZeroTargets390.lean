import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded390
import InitE.BackendStages.ZeroData390
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets390_eq : Padded390.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys390 := by
  with_unfolding_all rfl
theorem zeroTargets390_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded390 acc = ZeroData.keys390.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets390_eq]
#print axioms zeroTargets390_eq
end InitE.BackendStages
