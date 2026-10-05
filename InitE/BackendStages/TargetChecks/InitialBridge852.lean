import InitE.BackendStages.Encoded852
import InitE.BackendStages.TargetChecks.Initial852
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial852_eq : InitE.BackendStages.Encoded852 = Initial852 := by
  with_unfolding_all rfl
#print axioms Initial852_eq
end InitE.BackendStages.TargetChecks
