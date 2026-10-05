import InitE.BackendStages.Encoded430
import InitE.BackendStages.TargetChecks.Initial430
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial430_eq : InitE.BackendStages.Encoded430 = Initial430 := by
  with_unfolding_all rfl
#print axioms Initial430_eq
end InitE.BackendStages.TargetChecks
