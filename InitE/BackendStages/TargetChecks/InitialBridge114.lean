import InitE.BackendStages.Encoded114
import InitE.BackendStages.TargetChecks.Initial114
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial114_eq : InitE.BackendStages.Encoded114 = Initial114 := by
  with_unfolding_all rfl
#print axioms Initial114_eq
end InitE.BackendStages.TargetChecks
