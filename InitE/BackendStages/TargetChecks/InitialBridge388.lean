import InitE.BackendStages.Encoded388
import InitE.BackendStages.TargetChecks.Initial388
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial388_eq : InitE.BackendStages.Encoded388 = Initial388 := by
  with_unfolding_all rfl
#print axioms Initial388_eq
end InitE.BackendStages.TargetChecks
