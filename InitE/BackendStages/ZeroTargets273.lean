import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded273
import InitE.BackendStages.ZeroData273
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets273_eq : Padded273.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys273 := by
  with_unfolding_all rfl
theorem zeroTargets273_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded273 acc = ZeroData.keys273.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets273_eq]
#print axioms zeroTargets273_eq
end InitE.BackendStages
