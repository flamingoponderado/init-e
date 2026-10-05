import InitE.BackendStages.Encoded825
import InitE.BackendStages.TargetChecks.Initial825
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial825_eq : InitE.BackendStages.Encoded825 = Initial825 := by
  with_unfolding_all rfl
#print axioms Initial825_eq
end InitE.BackendStages.TargetChecks
