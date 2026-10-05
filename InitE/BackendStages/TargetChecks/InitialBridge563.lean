import InitE.BackendStages.Encoded563
import InitE.BackendStages.TargetChecks.Initial563
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial563_eq : InitE.BackendStages.Encoded563 = Initial563 := by
  with_unfolding_all rfl
#print axioms Initial563_eq
end InitE.BackendStages.TargetChecks
