import InitE.BackendStages.Encoded602
import InitE.BackendStages.TargetChecks.Initial602
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial602_eq : InitE.BackendStages.Encoded602 = Initial602 := by
  with_unfolding_all rfl
#print axioms Initial602_eq
end InitE.BackendStages.TargetChecks
