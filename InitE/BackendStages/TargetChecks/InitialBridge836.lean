import InitE.BackendStages.Encoded836
import InitE.BackendStages.TargetChecks.Initial836
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial836_eq : InitE.BackendStages.Encoded836 = Initial836 := by
  with_unfolding_all rfl
#print axioms Initial836_eq
end InitE.BackendStages.TargetChecks
