import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded543
import InitE.BackendStages.ZeroData543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets543_eq : Padded543.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys543 := by
  with_unfolding_all rfl
theorem zeroTargets543_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded543 acc = ZeroData.keys543.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets543_eq]
#print axioms zeroTargets543_eq
end InitE.BackendStages
