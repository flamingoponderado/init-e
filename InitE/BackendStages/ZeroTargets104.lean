import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded104
import InitE.BackendStages.ZeroData104
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets104_eq : Padded104.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys104 := by
  with_unfolding_all rfl
theorem zeroTargets104_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded104 acc = ZeroData.keys104.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets104_eq]
#print axioms zeroTargets104_eq
end InitE.BackendStages
