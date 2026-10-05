import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded174
import InitE.BackendStages.ZeroData174
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets174_eq : Padded174.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys174 := by
  with_unfolding_all rfl
theorem zeroTargets174_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded174 acc = ZeroData.keys174.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets174_eq]
#print axioms zeroTargets174_eq
end InitE.BackendStages
