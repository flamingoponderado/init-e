import InitE.BackendStages.Encoded470
import InitE.BackendStages.TargetChecks.Initial470
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial470_eq : InitE.BackendStages.Encoded470 = Initial470 := by
  with_unfolding_all rfl
#print axioms Initial470_eq
end InitE.BackendStages.TargetChecks
