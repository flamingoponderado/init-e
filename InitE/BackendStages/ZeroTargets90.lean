import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded90
import InitE.BackendStages.ZeroData90
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets90_eq : Padded90.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys90 := by
  with_unfolding_all rfl
theorem zeroTargets90_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded90 acc = ZeroData.keys90.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets90_eq]
#print axioms zeroTargets90_eq
end InitE.BackendStages
