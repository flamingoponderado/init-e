import InitE.BackendStages.Encoded473
import InitE.BackendStages.TargetChecks.Initial473
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial473_eq : InitE.BackendStages.Encoded473 = Initial473 := by
  with_unfolding_all rfl
#print axioms Initial473_eq
end InitE.BackendStages.TargetChecks
