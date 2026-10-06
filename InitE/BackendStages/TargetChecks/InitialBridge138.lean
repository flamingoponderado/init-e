import InitE.BackendStages.Encoded138
import InitE.BackendStages.TargetChecks.Initial138
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial138_eq : InitE.BackendStages.Encoded138 = Initial138 := by
  with_unfolding_all rfl
#print axioms Initial138_eq
end InitE.BackendStages.TargetChecks
