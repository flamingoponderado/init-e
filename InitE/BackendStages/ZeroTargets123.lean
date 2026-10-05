import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded123
import InitE.BackendStages.ZeroData123
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets123_eq : Padded123.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys123 := by
  with_unfolding_all rfl
theorem zeroTargets123_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded123 acc = ZeroData.keys123.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets123_eq]
#print axioms zeroTargets123_eq
end InitE.BackendStages
