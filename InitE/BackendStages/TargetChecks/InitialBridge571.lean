import InitE.BackendStages.Encoded571
import InitE.BackendStages.TargetChecks.Initial571
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial571_eq : InitE.BackendStages.Encoded571 = Initial571 := by
  with_unfolding_all rfl
#print axioms Initial571_eq
end InitE.BackendStages.TargetChecks
