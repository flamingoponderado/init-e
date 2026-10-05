import InitE.BackendStages.Encoded807
import InitE.BackendStages.TargetChecks.Initial807
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial807_eq : InitE.BackendStages.Encoded807 = Initial807 := by
  with_unfolding_all rfl
#print axioms Initial807_eq
end InitE.BackendStages.TargetChecks
