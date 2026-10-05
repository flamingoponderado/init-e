import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded727
import InitE.BackendStages.ZeroData727
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets727_eq : Padded727.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys727 := by
  with_unfolding_all rfl
theorem zeroTargets727_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded727 acc = ZeroData.keys727.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets727_eq]
#print axioms zeroTargets727_eq
end InitE.BackendStages
