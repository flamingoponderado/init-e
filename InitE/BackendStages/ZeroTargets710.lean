import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded710
import InitE.BackendStages.ZeroData710
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets710_eq : Padded710.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys710 := by
  with_unfolding_all rfl
theorem zeroTargets710_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded710 acc = ZeroData.keys710.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets710_eq]
#print axioms zeroTargets710_eq
end InitE.BackendStages
