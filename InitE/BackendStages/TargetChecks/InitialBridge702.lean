import InitE.BackendStages.Encoded702
import InitE.BackendStages.TargetChecks.Initial702
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial702_eq : InitE.BackendStages.Encoded702 = Initial702 := by
  with_unfolding_all rfl
#print axioms Initial702_eq
end InitE.BackendStages.TargetChecks
