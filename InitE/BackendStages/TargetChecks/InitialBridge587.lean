import InitE.BackendStages.Encoded587
import InitE.BackendStages.TargetChecks.Initial587
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial587_eq : InitE.BackendStages.Encoded587 = Initial587 := by
  with_unfolding_all rfl
#print axioms Initial587_eq
end InitE.BackendStages.TargetChecks
