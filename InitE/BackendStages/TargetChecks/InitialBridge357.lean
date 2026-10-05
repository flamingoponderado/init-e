import InitE.BackendStages.Encoded357
import InitE.BackendStages.TargetChecks.Initial357
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial357_eq : InitE.BackendStages.Encoded357 = Initial357 := by
  with_unfolding_all rfl
#print axioms Initial357_eq
end InitE.BackendStages.TargetChecks
