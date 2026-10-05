import InitE.BackendStages.Encoded209
import InitE.BackendStages.TargetChecks.Initial209
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial209_eq : InitE.BackendStages.Encoded209 = Initial209 := by
  with_unfolding_all rfl
#print axioms Initial209_eq
end InitE.BackendStages.TargetChecks
