import InitE.BackendStages.Encoded762
import InitE.BackendStages.TargetChecks.Initial762
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial762_eq : InitE.BackendStages.Encoded762 = Initial762 := by
  with_unfolding_all rfl
#print axioms Initial762_eq
end InitE.BackendStages.TargetChecks
