import InitE.BackendStages.Encoded481
import InitE.BackendStages.TargetChecks.Initial481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial481_eq : InitE.BackendStages.Encoded481 = Initial481 := by
  with_unfolding_all rfl
#print axioms Initial481_eq
end InitE.BackendStages.TargetChecks
