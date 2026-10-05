import InitE.BackendStages.Encoded712
import InitE.BackendStages.TargetChecks.Initial712
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial712_eq : InitE.BackendStages.Encoded712 = Initial712 := by
  with_unfolding_all rfl
#print axioms Initial712_eq
end InitE.BackendStages.TargetChecks
