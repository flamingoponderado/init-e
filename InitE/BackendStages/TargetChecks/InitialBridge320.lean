import InitE.BackendStages.Encoded320
import InitE.BackendStages.TargetChecks.Initial320
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial320_eq : InitE.BackendStages.Encoded320 = Initial320 := by
  with_unfolding_all rfl
#print axioms Initial320_eq
end InitE.BackendStages.TargetChecks
