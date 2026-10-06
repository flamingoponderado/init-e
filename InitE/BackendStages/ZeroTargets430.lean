import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded430
import InitE.BackendStages.ZeroData430
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets430_eq : Padded430.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys430 := by
  with_unfolding_all rfl
theorem zeroTargets430_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded430 acc = ZeroData.keys430.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets430_eq]
#print axioms zeroTargets430_eq
end InitE.BackendStages
