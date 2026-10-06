import InitE.BackendStages.Encoded106
import InitE.BackendStages.TargetChecks.Initial106
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial106_eq : InitE.BackendStages.Encoded106 = Initial106 := by
  with_unfolding_all rfl
#print axioms Initial106_eq
end InitE.BackendStages.TargetChecks
