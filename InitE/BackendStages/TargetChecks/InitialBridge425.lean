import InitE.BackendStages.Encoded425
import InitE.BackendStages.TargetChecks.Initial425
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial425_eq : InitE.BackendStages.Encoded425 = Initial425 := by
  with_unfolding_all rfl
#print axioms Initial425_eq
end InitE.BackendStages.TargetChecks
