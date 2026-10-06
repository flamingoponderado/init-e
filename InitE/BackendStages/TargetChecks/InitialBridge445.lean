import InitE.BackendStages.Encoded445
import InitE.BackendStages.TargetChecks.Initial445
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial445_eq : InitE.BackendStages.Encoded445 = Initial445 := by
  with_unfolding_all rfl
#print axioms Initial445_eq
end InitE.BackendStages.TargetChecks
