import InitE.BackendStages.Encoded377
import InitE.BackendStages.TargetChecks.Initial377
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial377_eq : InitE.BackendStages.Encoded377 = Initial377 := by
  with_unfolding_all rfl
#print axioms Initial377_eq
end InitE.BackendStages.TargetChecks
