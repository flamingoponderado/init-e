import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded800
import InitE.BackendStages.ZeroData800
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets800_eq : Padded800.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys800 := by
  with_unfolding_all rfl
theorem zeroTargets800_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded800 acc = ZeroData.keys800.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets800_eq]
#print axioms zeroTargets800_eq
end InitE.BackendStages
