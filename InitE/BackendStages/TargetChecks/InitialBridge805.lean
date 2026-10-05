import InitE.BackendStages.Encoded805
import InitE.BackendStages.TargetChecks.Initial805
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial805_eq : InitE.BackendStages.Encoded805 = Initial805 := by
  with_unfolding_all rfl
#print axioms Initial805_eq
end InitE.BackendStages.TargetChecks
