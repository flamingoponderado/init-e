import InitE.BackendStages.Encoded243
import InitE.BackendStages.TargetChecks.Initial243
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial243_eq : InitE.BackendStages.Encoded243 = Initial243 := by
  with_unfolding_all rfl
#print axioms Initial243_eq
end InitE.BackendStages.TargetChecks
