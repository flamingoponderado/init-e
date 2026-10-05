import InitE.BackendStages.Encoded215
import InitE.BackendStages.TargetChecks.Initial215
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial215_eq : InitE.BackendStages.Encoded215 = Initial215 := by
  with_unfolding_all rfl
#print axioms Initial215_eq
end InitE.BackendStages.TargetChecks
