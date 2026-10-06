import InitE.BackendStages.Encoded886
import InitE.BackendStages.TargetChecks.Initial886
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial886_eq : InitE.BackendStages.Encoded886 = Initial886 := by
  with_unfolding_all rfl
#print axioms Initial886_eq
end InitE.BackendStages.TargetChecks
