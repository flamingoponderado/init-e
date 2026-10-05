import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded68
import InitE.BackendStages.ZeroData68
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets68_eq : Padded68.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys68 := by
  with_unfolding_all rfl
theorem zeroTargets68_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded68 acc = ZeroData.keys68.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets68_eq]
#print axioms zeroTargets68_eq
end InitE.BackendStages
