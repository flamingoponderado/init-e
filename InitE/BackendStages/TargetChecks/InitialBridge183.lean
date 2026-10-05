import InitE.BackendStages.Encoded183
import InitE.BackendStages.TargetChecks.Initial183
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial183_eq : InitE.BackendStages.Encoded183 = Initial183 := by
  with_unfolding_all rfl
#print axioms Initial183_eq
end InitE.BackendStages.TargetChecks
