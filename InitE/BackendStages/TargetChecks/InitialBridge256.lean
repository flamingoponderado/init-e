import InitE.BackendStages.Encoded256
import InitE.BackendStages.TargetChecks.Initial256
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial256_eq : InitE.BackendStages.Encoded256 = Initial256 := by
  with_unfolding_all rfl
#print axioms Initial256_eq
end InitE.BackendStages.TargetChecks
