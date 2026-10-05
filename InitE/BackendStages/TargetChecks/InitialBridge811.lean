import InitE.BackendStages.Encoded811
import InitE.BackendStages.TargetChecks.Initial811
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial811_eq : InitE.BackendStages.Encoded811 = Initial811 := by
  with_unfolding_all rfl
#print axioms Initial811_eq
end InitE.BackendStages.TargetChecks
