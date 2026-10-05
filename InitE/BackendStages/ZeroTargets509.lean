import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded509
import InitE.BackendStages.ZeroData509
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets509_eq : Padded509.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys509 := by
  with_unfolding_all rfl
theorem zeroTargets509_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded509 acc = ZeroData.keys509.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets509_eq]
#print axioms zeroTargets509_eq
end InitE.BackendStages
