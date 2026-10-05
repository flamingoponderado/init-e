import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded768
import InitE.BackendStages.ZeroData768
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets768_eq : Padded768.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys768 := by
  with_unfolding_all rfl
theorem zeroTargets768_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded768 acc = ZeroData.keys768.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets768_eq]
#print axioms zeroTargets768_eq
end InitE.BackendStages
