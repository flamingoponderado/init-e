import InitE.BackendStages.Encoded700
import InitE.BackendStages.TargetChecks.Initial700
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial700_eq : InitE.BackendStages.Encoded700 = Initial700 := by
  with_unfolding_all rfl
#print axioms Initial700_eq
end InitE.BackendStages.TargetChecks
