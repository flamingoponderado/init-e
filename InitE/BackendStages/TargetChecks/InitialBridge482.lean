import InitE.BackendStages.Encoded482
import InitE.BackendStages.TargetChecks.Initial482
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial482_eq : InitE.BackendStages.Encoded482 = Initial482 := by
  with_unfolding_all rfl
#print axioms Initial482_eq
end InitE.BackendStages.TargetChecks
