import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded851
import InitE.BackendStages.ZeroData851
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets851_eq : Padded851.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys851 := by
  with_unfolding_all rfl
theorem zeroTargets851_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded851 acc = ZeroData.keys851.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets851_eq]
#print axioms zeroTargets851_eq
end InitE.BackendStages
