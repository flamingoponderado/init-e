import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded127
import InitE.BackendStages.ZeroData127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets127_eq : Padded127.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys127 := by
  with_unfolding_all rfl
theorem zeroTargets127_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded127 acc = ZeroData.keys127.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets127_eq]
#print axioms zeroTargets127_eq
end InitE.BackendStages
