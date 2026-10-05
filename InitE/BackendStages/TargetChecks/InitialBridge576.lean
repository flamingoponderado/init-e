import InitE.BackendStages.Encoded576
import InitE.BackendStages.TargetChecks.Initial576
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial576_eq : InitE.BackendStages.Encoded576 = Initial576 := by
  with_unfolding_all rfl
#print axioms Initial576_eq
end InitE.BackendStages.TargetChecks
