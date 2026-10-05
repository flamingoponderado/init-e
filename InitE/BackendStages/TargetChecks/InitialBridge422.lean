import InitE.BackendStages.Encoded422
import InitE.BackendStages.TargetChecks.Initial422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial422_eq : InitE.BackendStages.Encoded422 = Initial422 := by
  with_unfolding_all rfl
#print axioms Initial422_eq
end InitE.BackendStages.TargetChecks
