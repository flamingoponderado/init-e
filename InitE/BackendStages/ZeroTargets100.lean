import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded100
import InitE.BackendStages.ZeroData100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets100_eq : Padded100.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys100 := by
  with_unfolding_all rfl
theorem zeroTargets100_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded100 acc = ZeroData.keys100.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets100_eq]
#print axioms zeroTargets100_eq
end InitE.BackendStages
