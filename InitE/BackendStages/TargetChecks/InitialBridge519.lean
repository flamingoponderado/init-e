import InitE.BackendStages.Encoded519
import InitE.BackendStages.TargetChecks.Initial519
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial519_eq : InitE.BackendStages.Encoded519 = Initial519 := by
  with_unfolding_all rfl
#print axioms Initial519_eq
end InitE.BackendStages.TargetChecks
