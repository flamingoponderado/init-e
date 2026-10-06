import InitE.BackendStages.Encoded504
import InitE.BackendStages.TargetChecks.Initial504
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial504_eq : InitE.BackendStages.Encoded504 = Initial504 := by
  with_unfolding_all rfl
#print axioms Initial504_eq
end InitE.BackendStages.TargetChecks
