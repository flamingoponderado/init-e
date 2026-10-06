import InitE.BackendStages.Encoded464
import InitE.BackendStages.TargetChecks.Initial464
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial464_eq : InitE.BackendStages.Encoded464 = Initial464 := by
  with_unfolding_all rfl
#print axioms Initial464_eq
end InitE.BackendStages.TargetChecks
