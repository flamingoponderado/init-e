import InitE.BackendStages.Encoded293
import InitE.BackendStages.TargetChecks.Initial293
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial293_eq : InitE.BackendStages.Encoded293 = Initial293 := by
  with_unfolding_all rfl
#print axioms Initial293_eq
end InitE.BackendStages.TargetChecks
