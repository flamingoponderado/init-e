import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded513
import InitE.BackendStages.ZeroData513
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets513_eq : Padded513.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys513 := by
  with_unfolding_all rfl
theorem zeroTargets513_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded513 acc = ZeroData.keys513.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets513_eq]
#print axioms zeroTargets513_eq
end InitE.BackendStages
