import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded625
import InitE.BackendStages.ZeroData625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets625_eq : Padded625.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys625 := by
  with_unfolding_all rfl
theorem zeroTargets625_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded625 acc = ZeroData.keys625.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets625_eq]
#print axioms zeroTargets625_eq
end InitE.BackendStages
