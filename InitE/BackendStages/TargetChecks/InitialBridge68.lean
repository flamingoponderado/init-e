import InitE.BackendStages.Encoded68
import InitE.BackendStages.TargetChecks.Initial68
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial68_eq : InitE.BackendStages.Encoded68 = Initial68 := by
  with_unfolding_all rfl
#print axioms Initial68_eq
end InitE.BackendStages.TargetChecks
