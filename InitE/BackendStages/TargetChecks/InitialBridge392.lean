import InitE.BackendStages.Encoded392
import InitE.BackendStages.TargetChecks.Initial392
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial392_eq : InitE.BackendStages.Encoded392 = Initial392 := by
  with_unfolding_all rfl
#print axioms Initial392_eq
end InitE.BackendStages.TargetChecks
