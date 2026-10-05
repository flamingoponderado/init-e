import InitE.BackendStages.Encoded389
import InitE.BackendStages.TargetChecks.Initial389
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial389_eq : InitE.BackendStages.Encoded389 = Initial389 := by
  with_unfolding_all rfl
#print axioms Initial389_eq
end InitE.BackendStages.TargetChecks
