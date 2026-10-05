import InitE.BackendStages.Encoded883
import InitE.BackendStages.TargetChecks.Initial883
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial883_eq : InitE.BackendStages.Encoded883 = Initial883 := by
  with_unfolding_all rfl
#print axioms Initial883_eq
end InitE.BackendStages.TargetChecks
