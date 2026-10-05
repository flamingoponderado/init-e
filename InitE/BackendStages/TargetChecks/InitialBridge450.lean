import InitE.BackendStages.Encoded450
import InitE.BackendStages.TargetChecks.Initial450
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial450_eq : InitE.BackendStages.Encoded450 = Initial450 := by
  with_unfolding_all rfl
#print axioms Initial450_eq
end InitE.BackendStages.TargetChecks
