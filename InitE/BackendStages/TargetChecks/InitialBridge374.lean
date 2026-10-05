import InitE.BackendStages.Encoded374
import InitE.BackendStages.TargetChecks.Initial374
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial374_eq : InitE.BackendStages.Encoded374 = Initial374 := by
  with_unfolding_all rfl
#print axioms Initial374_eq
end InitE.BackendStages.TargetChecks
