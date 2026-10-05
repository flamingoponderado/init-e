import InitE.BackendStages.Encoded204
import InitE.BackendStages.TargetChecks.Initial204
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial204_eq : InitE.BackendStages.Encoded204 = Initial204 := by
  with_unfolding_all rfl
#print axioms Initial204_eq
end InitE.BackendStages.TargetChecks
