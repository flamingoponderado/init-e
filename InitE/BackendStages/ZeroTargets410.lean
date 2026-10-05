import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded410
import InitE.BackendStages.ZeroData410
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets410_eq : Padded410.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys410 := by
  with_unfolding_all rfl
theorem zeroTargets410_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded410 acc = ZeroData.keys410.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets410_eq]
#print axioms zeroTargets410_eq
end InitE.BackendStages
