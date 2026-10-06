import InitE.BackendStages.Encoded305
import InitE.BackendStages.TargetChecks.Initial305
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial305_eq : InitE.BackendStages.Encoded305 = Initial305 := by
  with_unfolding_all rfl
#print axioms Initial305_eq
end InitE.BackendStages.TargetChecks
