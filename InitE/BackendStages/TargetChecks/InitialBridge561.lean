import InitE.BackendStages.Encoded561
import InitE.BackendStages.TargetChecks.Initial561
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial561_eq : InitE.BackendStages.Encoded561 = Initial561 := by
  with_unfolding_all rfl
#print axioms Initial561_eq
end InitE.BackendStages.TargetChecks
