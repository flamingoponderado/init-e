import InitE.BackendStages.Encoded199
import InitE.BackendStages.TargetChecks.Initial199
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial199_eq : InitE.BackendStages.Encoded199 = Initial199 := by
  with_unfolding_all rfl
#print axioms Initial199_eq
end InitE.BackendStages.TargetChecks
