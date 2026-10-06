import InitE.BackendStages.Encoded451
import InitE.BackendStages.TargetChecks.Initial451
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial451_eq : InitE.BackendStages.Encoded451 = Initial451 := by
  with_unfolding_all rfl
#print axioms Initial451_eq
end InitE.BackendStages.TargetChecks
