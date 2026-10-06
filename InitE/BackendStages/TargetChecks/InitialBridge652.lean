import InitE.BackendStages.Encoded652
import InitE.BackendStages.TargetChecks.Initial652
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial652_eq : InitE.BackendStages.Encoded652 = Initial652 := by
  with_unfolding_all rfl
#print axioms Initial652_eq
end InitE.BackendStages.TargetChecks
