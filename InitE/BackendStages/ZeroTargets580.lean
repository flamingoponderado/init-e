import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded580
import InitE.BackendStages.ZeroData580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets580_eq : Padded580.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys580 := by
  with_unfolding_all rfl
theorem zeroTargets580_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded580 acc = ZeroData.keys580.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets580_eq]
#print axioms zeroTargets580_eq
end InitE.BackendStages
