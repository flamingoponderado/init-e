import InitE.BackendStages.Encoded371
import InitE.BackendStages.TargetChecks.Initial371
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial371_eq : InitE.BackendStages.Encoded371 = Initial371 := by
  with_unfolding_all rfl
#print axioms Initial371_eq
end InitE.BackendStages.TargetChecks
