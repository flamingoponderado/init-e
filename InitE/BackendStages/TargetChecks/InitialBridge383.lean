import InitE.BackendStages.Encoded383
import InitE.BackendStages.TargetChecks.Initial383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial383_eq : InitE.BackendStages.Encoded383 = Initial383 := by
  with_unfolding_all rfl
#print axioms Initial383_eq
end InitE.BackendStages.TargetChecks
