import InitE.BackendStages.Encoded115
import InitE.BackendStages.TargetChecks.Initial115
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial115_eq : InitE.BackendStages.Encoded115 = Initial115 := by
  with_unfolding_all rfl
#print axioms Initial115_eq
end InitE.BackendStages.TargetChecks
