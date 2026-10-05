import InitE.BackendStages.Encoded356
import InitE.BackendStages.TargetChecks.Initial356
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial356_eq : InitE.BackendStages.Encoded356 = Initial356 := by
  with_unfolding_all rfl
#print axioms Initial356_eq
end InitE.BackendStages.TargetChecks
