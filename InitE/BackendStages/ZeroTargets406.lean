import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded406
import InitE.BackendStages.ZeroData406
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets406_eq : Padded406.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys406 := by
  with_unfolding_all rfl
theorem zeroTargets406_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded406 acc = ZeroData.keys406.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets406_eq]
#print axioms zeroTargets406_eq
end InitE.BackendStages
