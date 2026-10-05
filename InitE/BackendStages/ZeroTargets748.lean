import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded748
import InitE.BackendStages.ZeroData748
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets748_eq : Padded748.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys748 := by
  with_unfolding_all rfl
theorem zeroTargets748_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded748 acc = ZeroData.keys748.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets748_eq]
#print axioms zeroTargets748_eq
end InitE.BackendStages
