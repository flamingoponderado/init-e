import InitE.BackendStages.Encoded309
import InitE.BackendStages.TargetChecks.Initial309
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial309_eq : InitE.BackendStages.Encoded309 = Initial309 := by
  with_unfolding_all rfl
#print axioms Initial309_eq
end InitE.BackendStages.TargetChecks
