import InitE.BackendStages.Encoded245
import InitE.BackendStages.TargetChecks.Initial245
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial245_eq : InitE.BackendStages.Encoded245 = Initial245 := by
  with_unfolding_all rfl
#print axioms Initial245_eq
end InitE.BackendStages.TargetChecks
