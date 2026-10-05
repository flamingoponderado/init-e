import InitE.BackendStages.Encoded175
import InitE.BackendStages.TargetChecks.Initial175
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial175_eq : InitE.BackendStages.Encoded175 = Initial175 := by
  with_unfolding_all rfl
#print axioms Initial175_eq
end InitE.BackendStages.TargetChecks
