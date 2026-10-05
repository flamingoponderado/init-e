import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded678
import InitE.BackendStages.ZeroData678
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets678_eq : Padded678.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys678 := by
  with_unfolding_all rfl
theorem zeroTargets678_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded678 acc = ZeroData.keys678.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets678_eq]
#print axioms zeroTargets678_eq
end InitE.BackendStages
