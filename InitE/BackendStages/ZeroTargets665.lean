import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded665
import InitE.BackendStages.ZeroData665
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets665_eq : Padded665.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys665 := by
  with_unfolding_all rfl
theorem zeroTargets665_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded665 acc = ZeroData.keys665.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets665_eq]
#print axioms zeroTargets665_eq
end InitE.BackendStages
