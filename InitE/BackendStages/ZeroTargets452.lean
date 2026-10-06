import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded452
import InitE.BackendStages.ZeroData452
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets452_eq : Padded452.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys452 := by
  with_unfolding_all rfl
theorem zeroTargets452_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded452 acc = ZeroData.keys452.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets452_eq]
#print axioms zeroTargets452_eq
end InitE.BackendStages
