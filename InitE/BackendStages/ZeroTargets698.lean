import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded698
import InitE.BackendStages.ZeroData698
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets698_eq : Padded698.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys698 := by
  with_unfolding_all rfl
theorem zeroTargets698_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded698 acc = ZeroData.keys698.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets698_eq]
#print axioms zeroTargets698_eq
end InitE.BackendStages
