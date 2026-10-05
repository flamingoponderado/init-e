import InitE.BackendStages.Encoded109
import InitE.BackendStages.TargetChecks.Initial109
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial109_eq : InitE.BackendStages.Encoded109 = Initial109 := by
  with_unfolding_all rfl
#print axioms Initial109_eq
end InitE.BackendStages.TargetChecks
