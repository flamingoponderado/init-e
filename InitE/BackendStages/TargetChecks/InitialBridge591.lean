import InitE.BackendStages.Encoded591
import InitE.BackendStages.TargetChecks.Initial591
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial591_eq : InitE.BackendStages.Encoded591 = Initial591 := by
  with_unfolding_all rfl
#print axioms Initial591_eq
end InitE.BackendStages.TargetChecks
