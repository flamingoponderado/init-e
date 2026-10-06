import InitE.BackendStages.Encoded142
import InitE.BackendStages.TargetChecks.Initial142
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial142_eq : InitE.BackendStages.Encoded142 = Initial142 := by
  with_unfolding_all rfl
#print axioms Initial142_eq
end InitE.BackendStages.TargetChecks
