import InitE.BackendStages.Encoded126
import InitE.BackendStages.TargetChecks.Initial126
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial126_eq : InitE.BackendStages.Encoded126 = Initial126 := by
  with_unfolding_all rfl
#print axioms Initial126_eq
end InitE.BackendStages.TargetChecks
