import InitE.BackendStages.Encoded407
import InitE.BackendStages.TargetChecks.Initial407
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial407_eq : InitE.BackendStages.Encoded407 = Initial407 := by
  with_unfolding_all rfl
#print axioms Initial407_eq
end InitE.BackendStages.TargetChecks
