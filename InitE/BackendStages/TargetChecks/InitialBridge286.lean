import InitE.BackendStages.Encoded286
import InitE.BackendStages.TargetChecks.Initial286
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial286_eq : InitE.BackendStages.Encoded286 = Initial286 := by
  with_unfolding_all rfl
#print axioms Initial286_eq
end InitE.BackendStages.TargetChecks
