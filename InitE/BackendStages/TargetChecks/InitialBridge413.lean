import InitE.BackendStages.Encoded413
import InitE.BackendStages.TargetChecks.Initial413
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial413_eq : InitE.BackendStages.Encoded413 = Initial413 := by
  with_unfolding_all rfl
#print axioms Initial413_eq
end InitE.BackendStages.TargetChecks
