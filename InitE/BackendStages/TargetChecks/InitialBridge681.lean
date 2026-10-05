import InitE.BackendStages.Encoded681
import InitE.BackendStages.TargetChecks.Initial681
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial681_eq : InitE.BackendStages.Encoded681 = Initial681 := by
  with_unfolding_all rfl
#print axioms Initial681_eq
end InitE.BackendStages.TargetChecks
