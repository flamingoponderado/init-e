import InitE.BackendStages.Encoded131
import InitE.BackendStages.TargetChecks.Initial131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial131_eq : InitE.BackendStages.Encoded131 = Initial131 := by
  with_unfolding_all rfl
#print axioms Initial131_eq
end InitE.BackendStages.TargetChecks
