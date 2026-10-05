import InitE.BackendStages.Encoded102
import InitE.BackendStages.TargetChecks.Initial102
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial102_eq : InitE.BackendStages.Encoded102 = Initial102 := by
  with_unfolding_all rfl
#print axioms Initial102_eq
end InitE.BackendStages.TargetChecks
