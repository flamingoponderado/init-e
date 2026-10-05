import InitE.BackendStages.Encoded582
import InitE.BackendStages.TargetChecks.Initial582
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial582_eq : InitE.BackendStages.Encoded582 = Initial582 := by
  with_unfolding_all rfl
#print axioms Initial582_eq
end InitE.BackendStages.TargetChecks
