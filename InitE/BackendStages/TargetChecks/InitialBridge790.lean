import InitE.BackendStages.Encoded790
import InitE.BackendStages.TargetChecks.Initial790
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial790_eq : InitE.BackendStages.Encoded790 = Initial790 := by
  with_unfolding_all rfl
#print axioms Initial790_eq
end InitE.BackendStages.TargetChecks
