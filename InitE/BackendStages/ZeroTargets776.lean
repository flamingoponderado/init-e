import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded776
import InitE.BackendStages.ZeroData776
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets776_eq : Padded776.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys776 := by
  with_unfolding_all rfl
theorem zeroTargets776_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded776 acc = ZeroData.keys776.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets776_eq]
#print axioms zeroTargets776_eq
end InitE.BackendStages
