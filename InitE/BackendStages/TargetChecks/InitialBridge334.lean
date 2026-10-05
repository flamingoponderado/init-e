import InitE.BackendStages.Encoded334
import InitE.BackendStages.TargetChecks.Initial334
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial334_eq : InitE.BackendStages.Encoded334 = Initial334 := by
  with_unfolding_all rfl
#print axioms Initial334_eq
end InitE.BackendStages.TargetChecks
