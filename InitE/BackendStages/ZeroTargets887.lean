import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded887
import InitE.BackendStages.ZeroData887
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets887_eq : Padded887.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys887 := by
  with_unfolding_all rfl
theorem zeroTargets887_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded887 acc = ZeroData.keys887.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets887_eq]
#print axioms zeroTargets887_eq
end InitE.BackendStages
