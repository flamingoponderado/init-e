import InitE.BackendStages.Encoded605
import InitE.BackendStages.TargetChecks.Initial605
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial605_eq : InitE.BackendStages.Encoded605 = Initial605 := by
  with_unfolding_all rfl
#print axioms Initial605_eq
end InitE.BackendStages.TargetChecks
