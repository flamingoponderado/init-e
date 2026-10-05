import InitE.BackendStages.Encoded67
import InitE.BackendStages.TargetChecks.Initial67
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial67_eq : InitE.BackendStages.Encoded67 = Initial67 := by
  with_unfolding_all rfl
#print axioms Initial67_eq
end InitE.BackendStages.TargetChecks
