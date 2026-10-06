import InitE.BackendStages.Encoded632
import InitE.BackendStages.TargetChecks.Initial632
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial632_eq : InitE.BackendStages.Encoded632 = Initial632 := by
  with_unfolding_all rfl
#print axioms Initial632_eq
end InitE.BackendStages.TargetChecks
