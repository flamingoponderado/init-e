import InitE.BackendStages.Encoded116
import InitE.BackendStages.TargetChecks.Initial116
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial116_eq : InitE.BackendStages.Encoded116 = Initial116 := by
  with_unfolding_all rfl
#print axioms Initial116_eq
end InitE.BackendStages.TargetChecks
