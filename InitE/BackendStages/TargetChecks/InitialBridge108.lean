import InitE.BackendStages.Encoded108
import InitE.BackendStages.TargetChecks.Initial108
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial108_eq : InitE.BackendStages.Encoded108 = Initial108 := by
  with_unfolding_all rfl
#print axioms Initial108_eq
end InitE.BackendStages.TargetChecks
