import InitE.BackendStages.Encoded411
import InitE.BackendStages.TargetChecks.Initial411
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial411_eq : InitE.BackendStages.Encoded411 = Initial411 := by
  with_unfolding_all rfl
#print axioms Initial411_eq
end InitE.BackendStages.TargetChecks
