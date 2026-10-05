import InitE.BackendStages.Encoded423
import InitE.BackendStages.TargetChecks.Initial423
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial423_eq : InitE.BackendStages.Encoded423 = Initial423 := by
  with_unfolding_all rfl
#print axioms Initial423_eq
end InitE.BackendStages.TargetChecks
