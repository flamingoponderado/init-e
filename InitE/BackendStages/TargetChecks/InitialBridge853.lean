import InitE.BackendStages.Encoded853
import InitE.BackendStages.TargetChecks.Initial853
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial853_eq : InitE.BackendStages.Encoded853 = Initial853 := by
  with_unfolding_all rfl
#print axioms Initial853_eq
end InitE.BackendStages.TargetChecks
