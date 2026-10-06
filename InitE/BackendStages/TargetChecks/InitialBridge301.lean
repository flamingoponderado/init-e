import InitE.BackendStages.Encoded301
import InitE.BackendStages.TargetChecks.Initial301
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial301_eq : InitE.BackendStages.Encoded301 = Initial301 := by
  with_unfolding_all rfl
#print axioms Initial301_eq
end InitE.BackendStages.TargetChecks
