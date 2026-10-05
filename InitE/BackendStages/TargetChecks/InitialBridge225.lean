import InitE.BackendStages.Encoded225
import InitE.BackendStages.TargetChecks.Initial225
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial225_eq : InitE.BackendStages.Encoded225 = Initial225 := by
  with_unfolding_all rfl
#print axioms Initial225_eq
end InitE.BackendStages.TargetChecks
