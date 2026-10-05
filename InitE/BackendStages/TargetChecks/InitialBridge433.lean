import InitE.BackendStages.Encoded433
import InitE.BackendStages.TargetChecks.Initial433
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial433_eq : InitE.BackendStages.Encoded433 = Initial433 := by
  with_unfolding_all rfl
#print axioms Initial433_eq
end InitE.BackendStages.TargetChecks
