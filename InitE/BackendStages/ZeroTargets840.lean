import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded840
import InitE.BackendStages.ZeroData840
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets840_eq : Padded840.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys840 := by
  with_unfolding_all rfl
theorem zeroTargets840_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded840 acc = ZeroData.keys840.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets840_eq]
#print axioms zeroTargets840_eq
end InitE.BackendStages
