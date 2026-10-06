import InitE.BackendStages.Encoded741
import InitE.BackendStages.TargetChecks.Initial741
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial741_eq : InitE.BackendStages.Encoded741 = Initial741 := by
  with_unfolding_all rfl
#print axioms Initial741_eq
end InitE.BackendStages.TargetChecks
