import InitE.BackendStages.Encoded876
import InitE.BackendStages.TargetChecks.Initial876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial876_eq : InitE.BackendStages.Encoded876 = Initial876 := by
  with_unfolding_all rfl
#print axioms Initial876_eq
end InitE.BackendStages.TargetChecks
