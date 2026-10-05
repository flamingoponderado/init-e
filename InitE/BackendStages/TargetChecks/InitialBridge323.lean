import InitE.BackendStages.Encoded323
import InitE.BackendStages.TargetChecks.Initial323
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial323_eq : InitE.BackendStages.Encoded323 = Initial323 := by
  with_unfolding_all rfl
#print axioms Initial323_eq
end InitE.BackendStages.TargetChecks
