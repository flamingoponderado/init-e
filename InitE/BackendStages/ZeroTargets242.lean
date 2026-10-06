import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded242
import InitE.BackendStages.ZeroData242
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets242_eq : Padded242.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys242 := by
  with_unfolding_all rfl
theorem zeroTargets242_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded242 acc = ZeroData.keys242.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets242_eq]
#print axioms zeroTargets242_eq
end InitE.BackendStages
