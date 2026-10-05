import InitE.BackendStages.Encoded156
import InitE.BackendStages.TargetChecks.Initial156
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial156_eq : InitE.BackendStages.Encoded156 = Initial156 := by
  with_unfolding_all rfl
#print axioms Initial156_eq
end InitE.BackendStages.TargetChecks
