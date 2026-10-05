import InitE.BackendStages.Encoded461
import InitE.BackendStages.TargetChecks.Initial461
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial461_eq : InitE.BackendStages.Encoded461 = Initial461 := by
  with_unfolding_all rfl
#print axioms Initial461_eq
end InitE.BackendStages.TargetChecks
