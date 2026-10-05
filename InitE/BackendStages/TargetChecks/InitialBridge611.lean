import InitE.BackendStages.Encoded611
import InitE.BackendStages.TargetChecks.Initial611
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial611_eq : InitE.BackendStages.Encoded611 = Initial611 := by
  with_unfolding_all rfl
#print axioms Initial611_eq
end InitE.BackendStages.TargetChecks
