import InitE.BackendStages.Encoded523
import InitE.BackendStages.TargetChecks.Initial523
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial523_eq : InitE.BackendStages.Encoded523 = Initial523 := by
  with_unfolding_all rfl
#print axioms Initial523_eq
end InitE.BackendStages.TargetChecks
