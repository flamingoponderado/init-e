import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded790
import InitE.BackendStages.ZeroData790
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets790_eq : Padded790.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys790 := by
  with_unfolding_all rfl
theorem zeroTargets790_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded790 acc = ZeroData.keys790.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets790_eq]
#print axioms zeroTargets790_eq
end InitE.BackendStages
