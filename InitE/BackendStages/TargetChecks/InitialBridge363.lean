import InitE.BackendStages.Encoded363
import InitE.BackendStages.TargetChecks.Initial363
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial363_eq : InitE.BackendStages.Encoded363 = Initial363 := by
  with_unfolding_all rfl
#print axioms Initial363_eq
end InitE.BackendStages.TargetChecks
