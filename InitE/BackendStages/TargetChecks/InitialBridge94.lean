import InitE.BackendStages.Encoded94
import InitE.BackendStages.TargetChecks.Initial94
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial94_eq : InitE.BackendStages.Encoded94 = Initial94 := by
  with_unfolding_all rfl
#print axioms Initial94_eq
end InitE.BackendStages.TargetChecks
