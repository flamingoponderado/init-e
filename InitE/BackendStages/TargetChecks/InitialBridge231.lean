import InitE.BackendStages.Encoded231
import InitE.BackendStages.TargetChecks.Initial231
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial231_eq : InitE.BackendStages.Encoded231 = Initial231 := by
  with_unfolding_all rfl
#print axioms Initial231_eq
end InitE.BackendStages.TargetChecks
