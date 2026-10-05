import InitE.BackendStages.Encoded835
import InitE.BackendStages.TargetChecks.Initial835
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial835_eq : InitE.BackendStages.Encoded835 = Initial835 := by
  with_unfolding_all rfl
#print axioms Initial835_eq
end InitE.BackendStages.TargetChecks
