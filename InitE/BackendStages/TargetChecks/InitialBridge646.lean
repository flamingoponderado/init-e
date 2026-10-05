import InitE.BackendStages.Encoded646
import InitE.BackendStages.TargetChecks.Initial646
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial646_eq : InitE.BackendStages.Encoded646 = Initial646 := by
  with_unfolding_all rfl
#print axioms Initial646_eq
end InitE.BackendStages.TargetChecks
