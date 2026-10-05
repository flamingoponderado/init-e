import InitE.BackendStages.Encoded133
import InitE.BackendStages.TargetChecks.Initial133
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial133_eq : InitE.BackendStages.Encoded133 = Initial133 := by
  with_unfolding_all rfl
#print axioms Initial133_eq
end InitE.BackendStages.TargetChecks
