import InitE.BackendStages.ZeroCollection
import InitE.BackendStages.Padded609
import InitE.BackendStages.ZeroData609
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem targets609_eq : Padded609.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys609 := by
  with_unfolding_all rfl
theorem zeroTargets609_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded609 acc = ZeroData.keys609.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets609_eq]
#print axioms zeroTargets609_eq
end InitE.BackendStages
