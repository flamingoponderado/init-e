import InitE.BackendStages.Encoded465
import InitE.BackendStages.TargetChecks.Initial465
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial465_eq : InitE.BackendStages.Encoded465 = Initial465 := by
  with_unfolding_all rfl
#print axioms Initial465_eq
end InitE.BackendStages.TargetChecks
