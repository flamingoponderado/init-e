import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded97
import InitE.BackendStages.ZeroData97
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets97_eq : Padded97.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys97 := by
  with_unfolding_all rfl
theorem zeroTargets97_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded97 acc = ZeroData.keys97.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets97_eq]
#print axioms zeroTargets97_eq
end InitE.BackendStages
