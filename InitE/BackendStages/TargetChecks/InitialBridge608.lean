import InitE.BackendStages.Encoded608
import InitE.BackendStages.TargetChecks.Initial608
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial608_eq : InitE.BackendStages.Encoded608 = Initial608 := by
  with_unfolding_all rfl
#print axioms Initial608_eq
end InitE.BackendStages.TargetChecks
