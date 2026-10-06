import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded205
import InitE.BackendStages.ZeroData205
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets205_eq : Padded205.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys205 := by
  with_unfolding_all rfl
theorem zeroTargets205_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded205 acc = ZeroData.keys205.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets205_eq]
#print axioms zeroTargets205_eq
end InitE.BackendStages
