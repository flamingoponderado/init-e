import InitE.BackendStages.Encoded261
import InitE.BackendStages.TargetChecks.Initial261
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial261_eq : InitE.BackendStages.Encoded261 = Initial261 := by
  with_unfolding_all rfl
#print axioms Initial261_eq
end InitE.BackendStages.TargetChecks
