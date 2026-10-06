import InitE.BackendStages.Encoded584
import InitE.BackendStages.TargetChecks.Initial584
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial584_eq : InitE.BackendStages.Encoded584 = Initial584 := by
  with_unfolding_all rfl
#print axioms Initial584_eq
end InitE.BackendStages.TargetChecks
