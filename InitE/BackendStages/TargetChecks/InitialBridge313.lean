import InitE.BackendStages.Encoded313
import InitE.BackendStages.TargetChecks.Initial313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial313_eq : InitE.BackendStages.Encoded313 = Initial313 := by
  with_unfolding_all rfl
#print axioms Initial313_eq
end InitE.BackendStages.TargetChecks
