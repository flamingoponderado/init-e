import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded796
import InitE.BackendStages.ZeroData796
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets796_eq : Padded796.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys796 := by
  with_unfolding_all rfl
theorem zeroTargets796_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded796 acc = ZeroData.keys796.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets796_eq]
#print axioms zeroTargets796_eq
end InitE.BackendStages
