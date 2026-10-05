import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded201
import InitE.BackendStages.ZeroData201
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets201_eq : Padded201.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys201 := by
  with_unfolding_all rfl
theorem zeroTargets201_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded201 acc = ZeroData.keys201.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets201_eq]
#print axioms zeroTargets201_eq
end InitE.BackendStages
