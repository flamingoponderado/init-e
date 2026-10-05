import InitE.BackendStages.Encoded501
import InitE.BackendStages.TargetChecks.Initial501
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial501_eq : InitE.BackendStages.Encoded501 = Initial501 := by
  with_unfolding_all rfl
#print axioms Initial501_eq
end InitE.BackendStages.TargetChecks
