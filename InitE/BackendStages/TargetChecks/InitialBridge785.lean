import InitE.BackendStages.Encoded785
import InitE.BackendStages.TargetChecks.Initial785
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial785_eq : InitE.BackendStages.Encoded785 = Initial785 := by
  with_unfolding_all rfl
#print axioms Initial785_eq
end InitE.BackendStages.TargetChecks
