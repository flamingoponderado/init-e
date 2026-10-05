import InitE.BackendStages.Encoded299
import InitE.BackendStages.TargetChecks.Initial299
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial299_eq : InitE.BackendStages.Encoded299 = Initial299 := by
  with_unfolding_all rfl
#print axioms Initial299_eq
end InitE.BackendStages.TargetChecks
