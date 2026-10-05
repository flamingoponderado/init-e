import InitE.BackendStages.Encoded589
import InitE.BackendStages.TargetChecks.Initial589
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial589_eq : InitE.BackendStages.Encoded589 = Initial589 := by
  with_unfolding_all rfl
#print axioms Initial589_eq
end InitE.BackendStages.TargetChecks
