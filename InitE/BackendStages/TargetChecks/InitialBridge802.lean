import InitE.BackendStages.Encoded802
import InitE.BackendStages.TargetChecks.Initial802
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial802_eq : InitE.BackendStages.Encoded802 = Initial802 := by
  with_unfolding_all rfl
#print axioms Initial802_eq
end InitE.BackendStages.TargetChecks
