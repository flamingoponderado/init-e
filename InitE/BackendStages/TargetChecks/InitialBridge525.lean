import InitE.BackendStages.Encoded525
import InitE.BackendStages.TargetChecks.Initial525
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial525_eq : InitE.BackendStages.Encoded525 = Initial525 := by
  with_unfolding_all rfl
#print axioms Initial525_eq
end InitE.BackendStages.TargetChecks
