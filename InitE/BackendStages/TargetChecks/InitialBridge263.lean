import InitE.BackendStages.Encoded263
import InitE.BackendStages.TargetChecks.Initial263
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial263_eq : InitE.BackendStages.Encoded263 = Initial263 := by
  with_unfolding_all rfl
#print axioms Initial263_eq
end InitE.BackendStages.TargetChecks
