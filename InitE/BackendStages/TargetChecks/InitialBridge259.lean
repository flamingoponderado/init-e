import InitE.BackendStages.Encoded259
import InitE.BackendStages.TargetChecks.Initial259
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial259_eq : InitE.BackendStages.Encoded259 = Initial259 := by
  with_unfolding_all rfl
#print axioms Initial259_eq
end InitE.BackendStages.TargetChecks
