import InitE.BackendStages.Encoded622
import InitE.BackendStages.TargetChecks.Initial622
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial622_eq : InitE.BackendStages.Encoded622 = Initial622 := by
  with_unfolding_all rfl
#print axioms Initial622_eq
end InitE.BackendStages.TargetChecks
