import InitE.BackendStages.Encoded812
import InitE.BackendStages.TargetChecks.Initial812
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial812_eq : InitE.BackendStages.Encoded812 = Initial812 := by
  with_unfolding_all rfl
#print axioms Initial812_eq
end InitE.BackendStages.TargetChecks
