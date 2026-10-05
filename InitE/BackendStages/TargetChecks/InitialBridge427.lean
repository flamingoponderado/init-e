import InitE.BackendStages.Encoded427
import InitE.BackendStages.TargetChecks.Initial427
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial427_eq : InitE.BackendStages.Encoded427 = Initial427 := by
  with_unfolding_all rfl
#print axioms Initial427_eq
end InitE.BackendStages.TargetChecks
