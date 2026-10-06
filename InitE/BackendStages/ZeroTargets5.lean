import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded5
import InitE.BackendStages.ZeroData5
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets5_eq : Padded5.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys5 := by
  with_unfolding_all rfl
theorem zeroTargets5_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded5 acc = ZeroData.keys5.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets5_eq]
#print axioms zeroTargets5_eq
end InitE.BackendStages
