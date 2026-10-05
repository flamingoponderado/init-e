import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded793
import InitE.BackendStages.ZeroData793
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets793_eq : Padded793.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys793 := by
  with_unfolding_all rfl
theorem zeroTargets793_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded793 acc = ZeroData.keys793.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets793_eq]
#print axioms zeroTargets793_eq
end InitE.BackendStages
