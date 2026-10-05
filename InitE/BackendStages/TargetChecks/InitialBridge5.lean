import InitE.BackendStages.Encoded5
import InitE.BackendStages.TargetChecks.Initial5
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial5_eq : InitE.BackendStages.Encoded5 = Initial5 := by
  with_unfolding_all rfl
#print axioms Initial5_eq
end InitE.BackendStages.TargetChecks
