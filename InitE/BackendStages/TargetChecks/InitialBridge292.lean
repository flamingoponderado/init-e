import InitE.BackendStages.Encoded292
import InitE.BackendStages.TargetChecks.Initial292
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial292_eq : InitE.BackendStages.Encoded292 = Initial292 := by
  with_unfolding_all rfl
#print axioms Initial292_eq
end InitE.BackendStages.TargetChecks
