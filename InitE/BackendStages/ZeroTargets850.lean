import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded850
import InitE.BackendStages.ZeroData850
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets850_eq : Padded850.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys850 := by
  with_unfolding_all rfl
theorem zeroTargets850_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded850 acc = ZeroData.keys850.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets850_eq]
#print axioms zeroTargets850_eq
end InitE.BackendStages
