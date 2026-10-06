import InitE.BackendStages.Encoded86
import InitE.BackendStages.TargetChecks.Initial86
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial86_eq : InitE.BackendStages.Encoded86 = Initial86 := by
  with_unfolding_all rfl
#print axioms Initial86_eq
end InitE.BackendStages.TargetChecks
