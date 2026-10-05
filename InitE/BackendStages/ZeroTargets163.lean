import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded163
import InitE.BackendStages.ZeroData163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets163_eq : Padded163.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys163 := by
  with_unfolding_all rfl
theorem zeroTargets163_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded163 acc = ZeroData.keys163.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets163_eq]
#print axioms zeroTargets163_eq
end InitE.BackendStages
