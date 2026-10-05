import InitE.BackendStages.Encoded165
import InitE.BackendStages.TargetChecks.Initial165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial165_eq : InitE.BackendStages.Encoded165 = Initial165 := by
  with_unfolding_all rfl
#print axioms Initial165_eq
end InitE.BackendStages.TargetChecks
