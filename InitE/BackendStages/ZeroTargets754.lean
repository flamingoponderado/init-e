import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded754
import InitE.BackendStages.ZeroData754
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets754_eq : Padded754.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys754 := by
  with_unfolding_all rfl
theorem zeroTargets754_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded754 acc = ZeroData.keys754.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets754_eq]
#print axioms zeroTargets754_eq
end InitE.BackendStages
