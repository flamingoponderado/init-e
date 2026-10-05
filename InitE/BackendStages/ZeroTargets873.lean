import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded873
import InitE.BackendStages.ZeroData873
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets873_eq : Padded873.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys873 := by
  with_unfolding_all rfl
theorem zeroTargets873_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded873 acc = ZeroData.keys873.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets873_eq]
#print axioms zeroTargets873_eq
end InitE.BackendStages
