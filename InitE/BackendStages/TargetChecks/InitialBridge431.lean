import InitE.BackendStages.Encoded431
import InitE.BackendStages.TargetChecks.Initial431
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial431_eq : InitE.BackendStages.Encoded431 = Initial431 := by
  with_unfolding_all rfl
#print axioms Initial431_eq
end InitE.BackendStages.TargetChecks
