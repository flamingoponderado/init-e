import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded819
import InitE.BackendStages.ZeroData819
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets819_eq : Padded819.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys819 := by
  with_unfolding_all rfl
theorem zeroTargets819_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded819 acc = ZeroData.keys819.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets819_eq]
#print axioms zeroTargets819_eq
end InitE.BackendStages
