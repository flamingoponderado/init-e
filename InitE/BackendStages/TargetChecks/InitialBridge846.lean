import InitE.BackendStages.Encoded846
import InitE.BackendStages.TargetChecks.Initial846
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial846_eq : InitE.BackendStages.Encoded846 = Initial846 := by
  with_unfolding_all rfl
#print axioms Initial846_eq
end InitE.BackendStages.TargetChecks
