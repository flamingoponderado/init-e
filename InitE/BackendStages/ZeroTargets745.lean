import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded745
import InitE.BackendStages.ZeroData745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets745_eq : Padded745.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys745 := by
  with_unfolding_all rfl
theorem zeroTargets745_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded745 acc = ZeroData.keys745.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets745_eq]
#print axioms zeroTargets745_eq
end InitE.BackendStages
