import InitE.BackendStages.Encoded284
import InitE.BackendStages.TargetChecks.Initial284
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial284_eq : InitE.BackendStages.Encoded284 = Initial284 := by
  with_unfolding_all rfl
#print axioms Initial284_eq
end InitE.BackendStages.TargetChecks
