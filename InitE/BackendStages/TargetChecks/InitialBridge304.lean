import InitE.BackendStages.Encoded304
import InitE.BackendStages.TargetChecks.Initial304
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial304_eq : InitE.BackendStages.Encoded304 = Initial304 := by
  with_unfolding_all rfl
#print axioms Initial304_eq
end InitE.BackendStages.TargetChecks
