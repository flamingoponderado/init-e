import InitE.BackendStages.Encoded0
import InitE.BackendStages.TargetChecks.Initial0
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial0_eq : InitE.BackendStages.Encoded0 = Initial0 := by
  with_unfolding_all rfl
#print axioms Initial0_eq
end InitE.BackendStages.TargetChecks
