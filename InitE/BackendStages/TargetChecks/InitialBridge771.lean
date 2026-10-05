import InitE.BackendStages.Encoded771
import InitE.BackendStages.TargetChecks.Initial771
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial771_eq : InitE.BackendStages.Encoded771 = Initial771 := by
  with_unfolding_all rfl
#print axioms Initial771_eq
end InitE.BackendStages.TargetChecks
