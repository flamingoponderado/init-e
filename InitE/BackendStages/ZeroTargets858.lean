import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded858
import InitE.BackendStages.ZeroData858
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets858_eq : Padded858.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys858 := by
  with_unfolding_all rfl
theorem zeroTargets858_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded858 acc = ZeroData.keys858.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets858_eq]
#print axioms zeroTargets858_eq
end InitE.BackendStages
