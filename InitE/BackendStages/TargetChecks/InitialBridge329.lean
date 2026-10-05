import InitE.BackendStages.Encoded329
import InitE.BackendStages.TargetChecks.Initial329
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial329_eq : InitE.BackendStages.Encoded329 = Initial329 := by
  with_unfolding_all rfl
#print axioms Initial329_eq
end InitE.BackendStages.TargetChecks
