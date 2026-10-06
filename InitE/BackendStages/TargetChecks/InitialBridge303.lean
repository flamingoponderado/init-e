import InitE.BackendStages.Encoded303
import InitE.BackendStages.TargetChecks.Initial303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial303_eq : InitE.BackendStages.Encoded303 = Initial303 := by
  with_unfolding_all rfl
#print axioms Initial303_eq
end InitE.BackendStages.TargetChecks
