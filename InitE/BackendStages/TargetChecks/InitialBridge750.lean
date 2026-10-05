import InitE.BackendStages.Encoded750
import InitE.BackendStages.TargetChecks.Initial750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial750_eq : InitE.BackendStages.Encoded750 = Initial750 := by
  with_unfolding_all rfl
#print axioms Initial750_eq
end InitE.BackendStages.TargetChecks
