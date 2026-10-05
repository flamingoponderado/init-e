import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded771
import InitE.BackendStages.ZeroData771
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets771_eq : Padded771.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys771 := by
  with_unfolding_all rfl
theorem zeroTargets771_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded771 acc = ZeroData.keys771.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets771_eq]
#print axioms zeroTargets771_eq
end InitE.BackendStages
