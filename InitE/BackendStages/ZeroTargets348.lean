import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded348
import InitE.BackendStages.ZeroData348
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets348_eq : Padded348.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys348 := by
  with_unfolding_all rfl
theorem zeroTargets348_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded348 acc = ZeroData.keys348.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets348_eq]
#print axioms zeroTargets348_eq
end InitE.BackendStages
