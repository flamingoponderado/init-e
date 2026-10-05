import InitE.BackendStages.Encoded372
import InitE.BackendStages.TargetChecks.Initial372
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial372_eq : InitE.BackendStages.Encoded372 = Initial372 := by
  with_unfolding_all rfl
#print axioms Initial372_eq
end InitE.BackendStages.TargetChecks
