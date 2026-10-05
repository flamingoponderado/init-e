import InitE.BackendStages.Encoded355
import InitE.BackendStages.TargetChecks.Initial355
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial355_eq : InitE.BackendStages.Encoded355 = Initial355 := by
  with_unfolding_all rfl
#print axioms Initial355_eq
end InitE.BackendStages.TargetChecks
