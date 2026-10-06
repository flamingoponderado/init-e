import InitE.BackendStages.Encoded327
import InitE.BackendStages.TargetChecks.Initial327
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial327_eq : InitE.BackendStages.Encoded327 = Initial327 := by
  with_unfolding_all rfl
#print axioms Initial327_eq
end InitE.BackendStages.TargetChecks
