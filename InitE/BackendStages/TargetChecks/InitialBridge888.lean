import InitE.BackendStages.Encoded888
import InitE.BackendStages.TargetChecks.Initial888
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial888_eq : InitE.BackendStages.Encoded888 = Initial888 := by
  with_unfolding_all rfl
#print axioms Initial888_eq
end InitE.BackendStages.TargetChecks
