import InitE.BackendStages.Encoded331
import InitE.BackendStages.TargetChecks.Initial331
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial331_eq : InitE.BackendStages.Encoded331 = Initial331 := by
  with_unfolding_all rfl
#print axioms Initial331_eq
end InitE.BackendStages.TargetChecks
