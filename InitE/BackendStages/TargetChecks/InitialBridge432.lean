import InitE.BackendStages.Encoded432
import InitE.BackendStages.TargetChecks.Initial432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial432_eq : InitE.BackendStages.Encoded432 = Initial432 := by
  with_unfolding_all rfl
#print axioms Initial432_eq
end InitE.BackendStages.TargetChecks
