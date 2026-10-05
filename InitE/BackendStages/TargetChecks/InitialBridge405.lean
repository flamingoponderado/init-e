import InitE.BackendStages.Encoded405
import InitE.BackendStages.TargetChecks.Initial405
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial405_eq : InitE.BackendStages.Encoded405 = Initial405 := by
  with_unfolding_all rfl
#print axioms Initial405_eq
end InitE.BackendStages.TargetChecks
