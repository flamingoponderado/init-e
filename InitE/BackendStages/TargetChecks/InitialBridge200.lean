import InitE.BackendStages.Encoded200
import InitE.BackendStages.TargetChecks.Initial200
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial200_eq : InitE.BackendStages.Encoded200 = Initial200 := by
  with_unfolding_all rfl
#print axioms Initial200_eq
end InitE.BackendStages.TargetChecks
