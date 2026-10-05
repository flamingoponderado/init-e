import InitE.BackendStages.Encoded638
import InitE.BackendStages.TargetChecks.Initial638
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial638_eq : InitE.BackendStages.Encoded638 = Initial638 := by
  with_unfolding_all rfl
#print axioms Initial638_eq
end InitE.BackendStages.TargetChecks
