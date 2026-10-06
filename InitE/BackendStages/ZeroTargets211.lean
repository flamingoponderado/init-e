import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded211
import InitE.BackendStages.ZeroData211
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets211_eq : Padded211.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys211 := by
  with_unfolding_all rfl
theorem zeroTargets211_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded211 acc = ZeroData.keys211.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets211_eq]
#print axioms zeroTargets211_eq
end InitE.BackendStages
