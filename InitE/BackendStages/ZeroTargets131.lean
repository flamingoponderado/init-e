import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded131
import InitE.BackendStages.ZeroData131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets131_eq : Padded131.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys131 := by
  with_unfolding_all rfl
theorem zeroTargets131_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded131 acc = ZeroData.keys131.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets131_eq]
#print axioms zeroTargets131_eq
end InitE.BackendStages
