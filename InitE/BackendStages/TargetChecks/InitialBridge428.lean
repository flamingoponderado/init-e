import InitE.BackendStages.Encoded428
import InitE.BackendStages.TargetChecks.Initial428
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial428_eq : InitE.BackendStages.Encoded428 = Initial428 := by
  with_unfolding_all rfl
#print axioms Initial428_eq
end InitE.BackendStages.TargetChecks
