import InitE.BackendStages.Encoded675
import InitE.BackendStages.TargetChecks.Initial675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial675_eq : InitE.BackendStages.Encoded675 = Initial675 := by
  with_unfolding_all rfl
#print axioms Initial675_eq
end InitE.BackendStages.TargetChecks
