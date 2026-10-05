import InitE.BackendStages.Encoded844
import InitE.BackendStages.TargetChecks.Initial844
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial844_eq : InitE.BackendStages.Encoded844 = Initial844 := by
  with_unfolding_all rfl
#print axioms Initial844_eq
end InitE.BackendStages.TargetChecks
