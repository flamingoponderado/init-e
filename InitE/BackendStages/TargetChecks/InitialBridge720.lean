import InitE.BackendStages.Encoded720
import InitE.BackendStages.TargetChecks.Initial720
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial720_eq : InitE.BackendStages.Encoded720 = Initial720 := by
  with_unfolding_all rfl
#print axioms Initial720_eq
end InitE.BackendStages.TargetChecks
