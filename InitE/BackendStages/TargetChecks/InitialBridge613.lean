import InitE.BackendStages.Encoded613
import InitE.BackendStages.TargetChecks.Initial613
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial613_eq : InitE.BackendStages.Encoded613 = Initial613 := by
  with_unfolding_all rfl
#print axioms Initial613_eq
end InitE.BackendStages.TargetChecks
