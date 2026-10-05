import InitE.BackendStages.Encoded414
import InitE.BackendStages.TargetChecks.Initial414
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial414_eq : InitE.BackendStages.Encoded414 = Initial414 := by
  with_unfolding_all rfl
#print axioms Initial414_eq
end InitE.BackendStages.TargetChecks
