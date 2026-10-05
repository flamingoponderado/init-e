import InitE.BackendStages.Encoded685
import InitE.BackendStages.TargetChecks.Initial685
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial685_eq : InitE.BackendStages.Encoded685 = Initial685 := by
  with_unfolding_all rfl
#print axioms Initial685_eq
end InitE.BackendStages.TargetChecks
