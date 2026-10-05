import InitE.BackendStages.Encoded845
import InitE.BackendStages.TargetChecks.Initial845
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial845_eq : InitE.BackendStages.Encoded845 = Initial845 := by
  with_unfolding_all rfl
#print axioms Initial845_eq
end InitE.BackendStages.TargetChecks
