import InitE.BackendStages.Encoded311
import InitE.BackendStages.TargetChecks.Initial311
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial311_eq : InitE.BackendStages.Encoded311 = Initial311 := by
  with_unfolding_all rfl
#print axioms Initial311_eq
end InitE.BackendStages.TargetChecks
