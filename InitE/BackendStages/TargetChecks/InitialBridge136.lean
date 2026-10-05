import InitE.BackendStages.Encoded136
import InitE.BackendStages.TargetChecks.Initial136
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial136_eq : InitE.BackendStages.Encoded136 = Initial136 := by
  with_unfolding_all rfl
#print axioms Initial136_eq
end InitE.BackendStages.TargetChecks
