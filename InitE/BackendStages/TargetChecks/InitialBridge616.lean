import InitE.BackendStages.Encoded616
import InitE.BackendStages.TargetChecks.Initial616
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial616_eq : InitE.BackendStages.Encoded616 = Initial616 := by
  with_unfolding_all rfl
#print axioms Initial616_eq
end InitE.BackendStages.TargetChecks
