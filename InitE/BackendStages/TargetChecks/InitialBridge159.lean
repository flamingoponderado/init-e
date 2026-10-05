import InitE.BackendStages.Encoded159
import InitE.BackendStages.TargetChecks.Initial159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial159_eq : InitE.BackendStages.Encoded159 = Initial159 := by
  with_unfolding_all rfl
#print axioms Initial159_eq
end InitE.BackendStages.TargetChecks
