import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded383
import InitE.BackendStages.ZeroData383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets383_eq : Padded383.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys383 := by
  with_unfolding_all rfl
theorem zeroTargets383_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded383 acc = ZeroData.keys383.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets383_eq]
#print axioms zeroTargets383_eq
end InitE.BackendStages
