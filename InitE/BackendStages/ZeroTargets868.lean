import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded868
import InitE.BackendStages.ZeroData868
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets868_eq : Padded868.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys868 := by
  with_unfolding_all rfl
theorem zeroTargets868_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded868 acc = ZeroData.keys868.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets868_eq]
#print axioms zeroTargets868_eq
end InitE.BackendStages
