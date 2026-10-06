import InitE.BackendStages.Encoded619
import InitE.BackendStages.TargetChecks.Initial619
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial619_eq : InitE.BackendStages.Encoded619 = Initial619 := by
  with_unfolding_all rfl
#print axioms Initial619_eq
end InitE.BackendStages.TargetChecks
