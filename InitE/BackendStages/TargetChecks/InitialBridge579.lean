import InitE.BackendStages.Encoded579
import InitE.BackendStages.TargetChecks.Initial579
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial579_eq : InitE.BackendStages.Encoded579 = Initial579 := by
  with_unfolding_all rfl
#print axioms Initial579_eq
end InitE.BackendStages.TargetChecks
