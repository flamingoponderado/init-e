import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded737
import InitE.BackendStages.ZeroData737
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets737_eq : Padded737.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys737 := by
  with_unfolding_all rfl
theorem zeroTargets737_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded737 acc = ZeroData.keys737.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets737_eq]
#print axioms zeroTargets737_eq
end InitE.BackendStages
