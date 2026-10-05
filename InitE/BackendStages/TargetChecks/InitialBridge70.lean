import InitE.BackendStages.Encoded70
import InitE.BackendStages.TargetChecks.Initial70
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial70_eq : InitE.BackendStages.Encoded70 = Initial70 := by
  with_unfolding_all rfl
#print axioms Initial70_eq
end InitE.BackendStages.TargetChecks
