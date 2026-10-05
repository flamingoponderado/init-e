import InitE.BackendStages.Encoded472
import InitE.BackendStages.TargetChecks.Initial472
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial472_eq : InitE.BackendStages.Encoded472 = Initial472 := by
  with_unfolding_all rfl
#print axioms Initial472_eq
end InitE.BackendStages.TargetChecks
