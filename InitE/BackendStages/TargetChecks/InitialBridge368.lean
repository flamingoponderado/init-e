import InitE.BackendStages.Encoded368
import InitE.BackendStages.TargetChecks.Initial368
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial368_eq : InitE.BackendStages.Encoded368 = Initial368 := by
  with_unfolding_all rfl
#print axioms Initial368_eq
end InitE.BackendStages.TargetChecks
