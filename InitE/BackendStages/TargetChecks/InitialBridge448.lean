import InitE.BackendStages.Encoded448
import InitE.BackendStages.TargetChecks.Initial448
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial448_eq : InitE.BackendStages.Encoded448 = Initial448 := by
  with_unfolding_all rfl
#print axioms Initial448_eq
end InitE.BackendStages.TargetChecks
