import InitE.BackendStages.Encoded385
import InitE.BackendStages.TargetChecks.Initial385
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial385_eq : InitE.BackendStages.Encoded385 = Initial385 := by
  with_unfolding_all rfl
#print axioms Initial385_eq
end InitE.BackendStages.TargetChecks
