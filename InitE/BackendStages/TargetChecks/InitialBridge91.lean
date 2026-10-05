import InitE.BackendStages.Encoded91
import InitE.BackendStages.TargetChecks.Initial91
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial91_eq : InitE.BackendStages.Encoded91 = Initial91 := by
  with_unfolding_all rfl
#print axioms Initial91_eq
end InitE.BackendStages.TargetChecks
