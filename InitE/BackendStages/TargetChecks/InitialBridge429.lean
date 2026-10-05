import InitE.BackendStages.Encoded429
import InitE.BackendStages.TargetChecks.Initial429
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial429_eq : InitE.BackendStages.Encoded429 = Initial429 := by
  with_unfolding_all rfl
#print axioms Initial429_eq
end InitE.BackendStages.TargetChecks
