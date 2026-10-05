import InitE.BackendStages.Encoded708
import InitE.BackendStages.TargetChecks.Initial708
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial708_eq : InitE.BackendStages.Encoded708 = Initial708 := by
  with_unfolding_all rfl
#print axioms Initial708_eq
end InitE.BackendStages.TargetChecks
