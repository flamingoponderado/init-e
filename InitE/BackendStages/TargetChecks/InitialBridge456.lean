import InitE.BackendStages.Encoded456
import InitE.BackendStages.TargetChecks.Initial456
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial456_eq : InitE.BackendStages.Encoded456 = Initial456 := by
  with_unfolding_all rfl
#print axioms Initial456_eq
end InitE.BackendStages.TargetChecks
