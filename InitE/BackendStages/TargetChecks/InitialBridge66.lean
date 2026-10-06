import InitE.BackendStages.Encoded66
import InitE.BackendStages.TargetChecks.Initial66
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial66_eq : InitE.BackendStages.Encoded66 = Initial66 := by
  with_unfolding_all rfl
#print axioms Initial66_eq
end InitE.BackendStages.TargetChecks
