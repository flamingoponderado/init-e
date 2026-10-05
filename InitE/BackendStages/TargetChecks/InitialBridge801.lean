import InitE.BackendStages.Encoded801
import InitE.BackendStages.TargetChecks.Initial801
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial801_eq : InitE.BackendStages.Encoded801 = Initial801 := by
  with_unfolding_all rfl
#print axioms Initial801_eq
end InitE.BackendStages.TargetChecks
