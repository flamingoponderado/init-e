import InitE.BackendStages.Encoded72
import InitE.BackendStages.TargetChecks.Initial72
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial72_eq : InitE.BackendStages.Encoded72 = Initial72 := by
  with_unfolding_all rfl
#print axioms Initial72_eq
end InitE.BackendStages.TargetChecks
