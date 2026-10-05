import InitE.BackendStages.Encoded600
import InitE.BackendStages.TargetChecks.Initial600
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial600_eq : InitE.BackendStages.Encoded600 = Initial600 := by
  with_unfolding_all rfl
#print axioms Initial600_eq
end InitE.BackendStages.TargetChecks
