import InitE.BackendStages.Encoded354
import InitE.BackendStages.TargetChecks.Initial354
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial354_eq : InitE.BackendStages.Encoded354 = Initial354 := by
  with_unfolding_all rfl
#print axioms Initial354_eq
end InitE.BackendStages.TargetChecks
