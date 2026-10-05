import InitE.BackendStages.Encoded715
import InitE.BackendStages.TargetChecks.Initial715
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial715_eq : InitE.BackendStages.Encoded715 = Initial715 := by
  with_unfolding_all rfl
#print axioms Initial715_eq
end InitE.BackendStages.TargetChecks
