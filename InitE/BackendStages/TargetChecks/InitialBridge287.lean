import InitE.BackendStages.Encoded287
import InitE.BackendStages.TargetChecks.Initial287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial287_eq : InitE.BackendStages.Encoded287 = Initial287 := by
  with_unfolding_all rfl
#print axioms Initial287_eq
end InitE.BackendStages.TargetChecks
