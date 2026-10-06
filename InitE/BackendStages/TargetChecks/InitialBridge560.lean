import InitE.BackendStages.Encoded560
import InitE.BackendStages.TargetChecks.Initial560
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial560_eq : InitE.BackendStages.Encoded560 = Initial560 := by
  with_unfolding_all rfl
#print axioms Initial560_eq
end InitE.BackendStages.TargetChecks
