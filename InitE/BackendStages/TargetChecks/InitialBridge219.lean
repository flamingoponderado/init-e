import InitE.BackendStages.Encoded219
import InitE.BackendStages.TargetChecks.Initial219
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial219_eq : InitE.BackendStages.Encoded219 = Initial219 := by
  with_unfolding_all rfl
#print axioms Initial219_eq
end InitE.BackendStages.TargetChecks
