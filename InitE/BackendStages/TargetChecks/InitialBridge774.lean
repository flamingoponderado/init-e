import InitE.BackendStages.Encoded774
import InitE.BackendStages.TargetChecks.Initial774
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial774_eq : InitE.BackendStages.Encoded774 = Initial774 := by
  with_unfolding_all rfl
#print axioms Initial774_eq
end InitE.BackendStages.TargetChecks
