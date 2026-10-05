import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded128
import InitE.BackendStages.ZeroData128
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets128_eq : Padded128.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys128 := by
  with_unfolding_all rfl
theorem zeroTargets128_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded128 acc = ZeroData.keys128.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets128_eq]
#print axioms zeroTargets128_eq
end InitE.BackendStages
