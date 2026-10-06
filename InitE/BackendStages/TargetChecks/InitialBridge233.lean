import InitE.BackendStages.Encoded233
import InitE.BackendStages.TargetChecks.Initial233
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial233_eq : InitE.BackendStages.Encoded233 = Initial233 := by
  with_unfolding_all rfl
#print axioms Initial233_eq
end InitE.BackendStages.TargetChecks
