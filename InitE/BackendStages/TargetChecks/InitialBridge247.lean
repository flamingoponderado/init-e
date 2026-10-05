import InitE.BackendStages.Encoded247
import InitE.BackendStages.TargetChecks.Initial247
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial247_eq : InitE.BackendStages.Encoded247 = Initial247 := by
  with_unfolding_all rfl
#print axioms Initial247_eq
end InitE.BackendStages.TargetChecks
