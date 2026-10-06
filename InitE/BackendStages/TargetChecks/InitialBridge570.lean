import InitE.BackendStages.Encoded570
import InitE.BackendStages.TargetChecks.Initial570
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial570_eq : InitE.BackendStages.Encoded570 = Initial570 := by
  with_unfolding_all rfl
#print axioms Initial570_eq
end InitE.BackendStages.TargetChecks
