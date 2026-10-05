import InitE.BackendStages.Encoded529
import InitE.BackendStages.TargetChecks.Initial529
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial529_eq : InitE.BackendStages.Encoded529 = Initial529 := by
  with_unfolding_all rfl
#print axioms Initial529_eq
end InitE.BackendStages.TargetChecks
