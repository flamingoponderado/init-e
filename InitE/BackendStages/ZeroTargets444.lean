import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded444
import InitE.BackendStages.ZeroData444
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets444_eq : Padded444.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys444 := by
  with_unfolding_all rfl
theorem zeroTargets444_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded444 acc = ZeroData.keys444.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets444_eq]
#print axioms zeroTargets444_eq
end InitE.BackendStages
