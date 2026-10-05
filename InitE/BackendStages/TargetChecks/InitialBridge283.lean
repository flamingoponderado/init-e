import InitE.BackendStages.Encoded283
import InitE.BackendStages.TargetChecks.Initial283
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial283_eq : InitE.BackendStages.Encoded283 = Initial283 := by
  with_unfolding_all rfl
#print axioms Initial283_eq
end InitE.BackendStages.TargetChecks
