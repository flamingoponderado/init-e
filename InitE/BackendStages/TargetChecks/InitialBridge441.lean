import InitE.BackendStages.Encoded441
import InitE.BackendStages.TargetChecks.Initial441
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial441_eq : InitE.BackendStages.Encoded441 = Initial441 := by
  with_unfolding_all rfl
#print axioms Initial441_eq
end InitE.BackendStages.TargetChecks
