import InitE.BackendStages.Encoded714
import InitE.BackendStages.TargetChecks.Initial714
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial714_eq : InitE.BackendStages.Encoded714 = Initial714 := by
  with_unfolding_all rfl
#print axioms Initial714_eq
end InitE.BackendStages.TargetChecks
