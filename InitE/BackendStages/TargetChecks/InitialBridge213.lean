import InitE.BackendStages.Encoded213
import InitE.BackendStages.TargetChecks.Initial213
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial213_eq : InitE.BackendStages.Encoded213 = Initial213 := by
  with_unfolding_all rfl
#print axioms Initial213_eq
end InitE.BackendStages.TargetChecks
