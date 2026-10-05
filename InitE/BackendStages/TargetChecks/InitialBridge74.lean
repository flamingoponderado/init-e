import InitE.BackendStages.Encoded74
import InitE.BackendStages.TargetChecks.Initial74
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial74_eq : InitE.BackendStages.Encoded74 = Initial74 := by
  with_unfolding_all rfl
#print axioms Initial74_eq
end InitE.BackendStages.TargetChecks
