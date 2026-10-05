import InitE.BackendStages.Encoded680
import InitE.BackendStages.TargetChecks.Initial680
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial680_eq : InitE.BackendStages.Encoded680 = Initial680 := by
  with_unfolding_all rfl
#print axioms Initial680_eq
end InitE.BackendStages.TargetChecks
