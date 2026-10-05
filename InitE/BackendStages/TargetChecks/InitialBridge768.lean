import InitE.BackendStages.Encoded768
import InitE.BackendStages.TargetChecks.Initial768
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial768_eq : InitE.BackendStages.Encoded768 = Initial768 := by
  with_unfolding_all rfl
#print axioms Initial768_eq
end InitE.BackendStages.TargetChecks
