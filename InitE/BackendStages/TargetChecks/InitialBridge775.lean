import InitE.BackendStages.Encoded775
import InitE.BackendStages.TargetChecks.Initial775
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial775_eq : InitE.BackendStages.Encoded775 = Initial775 := by
  with_unfolding_all rfl
#print axioms Initial775_eq
end InitE.BackendStages.TargetChecks
