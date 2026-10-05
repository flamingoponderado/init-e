import InitE.BackendStages.Encoded400
import InitE.BackendStages.TargetChecks.Initial400
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial400_eq : InitE.BackendStages.Encoded400 = Initial400 := by
  with_unfolding_all rfl
#print axioms Initial400_eq
end InitE.BackendStages.TargetChecks
