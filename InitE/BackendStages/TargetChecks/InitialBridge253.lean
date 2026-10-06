import InitE.BackendStages.Encoded253
import InitE.BackendStages.TargetChecks.Initial253
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial253_eq : InitE.BackendStages.Encoded253 = Initial253 := by
  with_unfolding_all rfl
#print axioms Initial253_eq
end InitE.BackendStages.TargetChecks
