import InitE.BackendStages.Encoded281
import InitE.BackendStages.TargetChecks.Initial281
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial281_eq : InitE.BackendStages.Encoded281 = Initial281 := by
  with_unfolding_all rfl
#print axioms Initial281_eq
end InitE.BackendStages.TargetChecks
