import InitE.BackendStages.Encoded736
import InitE.BackendStages.TargetChecks.Initial736
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial736_eq : InitE.BackendStages.Encoded736 = Initial736 := by
  with_unfolding_all rfl
#print axioms Initial736_eq
end InitE.BackendStages.TargetChecks
