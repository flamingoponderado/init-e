import InitE.BackendStages.Encoded730
import InitE.BackendStages.TargetChecks.Initial730
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial730_eq : InitE.BackendStages.Encoded730 = Initial730 := by
  with_unfolding_all rfl
#print axioms Initial730_eq
end InitE.BackendStages.TargetChecks
