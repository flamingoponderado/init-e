import InitE.BackendStages.Encoded629
import InitE.BackendStages.TargetChecks.Initial629
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial629_eq : InitE.BackendStages.Encoded629 = Initial629 := by
  with_unfolding_all rfl
#print axioms Initial629_eq
end InitE.BackendStages.TargetChecks
