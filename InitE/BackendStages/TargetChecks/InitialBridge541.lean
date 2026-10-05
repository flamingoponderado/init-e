import InitE.BackendStages.Encoded541
import InitE.BackendStages.TargetChecks.Initial541
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial541_eq : InitE.BackendStages.Encoded541 = Initial541 := by
  with_unfolding_all rfl
#print axioms Initial541_eq
end InitE.BackendStages.TargetChecks
