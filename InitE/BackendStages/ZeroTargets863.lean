import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded863
import InitE.BackendStages.ZeroData863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets863_eq : Padded863.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys863 := by
  with_unfolding_all rfl
theorem zeroTargets863_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded863 acc = ZeroData.keys863.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets863_eq]
#print axioms zeroTargets863_eq
end InitE.BackendStages
