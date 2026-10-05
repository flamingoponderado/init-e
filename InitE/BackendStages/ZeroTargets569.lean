import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded569
import InitE.BackendStages.ZeroData569
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets569_eq : Padded569.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys569 := by
  with_unfolding_all rfl
theorem zeroTargets569_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded569 acc = ZeroData.keys569.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets569_eq]
#print axioms zeroTargets569_eq
end InitE.BackendStages
