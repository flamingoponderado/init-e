import InitE.BackendStages.Encoded379
import InitE.BackendStages.TargetChecks.Initial379
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial379_eq : InitE.BackendStages.Encoded379 = Initial379 := by
  with_unfolding_all rfl
#print axioms Initial379_eq
end InitE.BackendStages.TargetChecks
