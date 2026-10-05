import InitE.BackendStages.Encoded234
import InitE.BackendStages.TargetChecks.Initial234
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial234_eq : InitE.BackendStages.Encoded234 = Initial234 := by
  with_unfolding_all rfl
#print axioms Initial234_eq
end InitE.BackendStages.TargetChecks
