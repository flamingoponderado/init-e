import InitE.BackendStages.Encoded705
import InitE.BackendStages.TargetChecks.Initial705
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial705_eq : InitE.BackendStages.Encoded705 = Initial705 := by
  with_unfolding_all rfl
#print axioms Initial705_eq
end InitE.BackendStages.TargetChecks
