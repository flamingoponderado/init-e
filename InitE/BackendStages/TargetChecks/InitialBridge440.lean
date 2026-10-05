import InitE.BackendStages.Encoded440
import InitE.BackendStages.TargetChecks.Initial440
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial440_eq : InitE.BackendStages.Encoded440 = Initial440 := by
  with_unfolding_all rfl
#print axioms Initial440_eq
end InitE.BackendStages.TargetChecks
