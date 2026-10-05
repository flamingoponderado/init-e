import InitE.BackendStages.Encoded97
import InitE.BackendStages.TargetChecks.Initial97
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial97_eq : InitE.BackendStages.Encoded97 = Initial97 := by
  with_unfolding_all rfl
#print axioms Initial97_eq
end InitE.BackendStages.TargetChecks
