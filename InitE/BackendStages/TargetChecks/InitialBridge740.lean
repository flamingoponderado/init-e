import InitE.BackendStages.Encoded740
import InitE.BackendStages.TargetChecks.Initial740
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial740_eq : InitE.BackendStages.Encoded740 = Initial740 := by
  with_unfolding_all rfl
#print axioms Initial740_eq
end InitE.BackendStages.TargetChecks
