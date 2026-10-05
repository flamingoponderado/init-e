import InitE.BackendStages.Encoded79
import InitE.BackendStages.TargetChecks.Initial79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial79_eq : InitE.BackendStages.Encoded79 = Initial79 := by
  with_unfolding_all rfl
#print axioms Initial79_eq
end InitE.BackendStages.TargetChecks
