import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded259
import InitE.BackendStages.ZeroData259
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets259_eq : Padded259.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys259 := by
  with_unfolding_all rfl
theorem zeroTargets259_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded259 acc = ZeroData.keys259.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets259_eq]
#print axioms zeroTargets259_eq
end InitE.BackendStages
