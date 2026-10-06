import InitE.BackendStages.Encoded623
import InitE.BackendStages.TargetChecks.Initial623
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial623_eq : InitE.BackendStages.Encoded623 = Initial623 := by
  with_unfolding_all rfl
#print axioms Initial623_eq
end InitE.BackendStages.TargetChecks
