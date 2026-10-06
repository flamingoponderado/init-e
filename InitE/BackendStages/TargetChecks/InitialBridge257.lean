import InitE.BackendStages.Encoded257
import InitE.BackendStages.TargetChecks.Initial257
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial257_eq : InitE.BackendStages.Encoded257 = Initial257 := by
  with_unfolding_all rfl
#print axioms Initial257_eq
end InitE.BackendStages.TargetChecks
