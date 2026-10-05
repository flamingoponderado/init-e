import InitE.BackendStages.Encoded531
import InitE.BackendStages.TargetChecks.Initial531
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial531_eq : InitE.BackendStages.Encoded531 = Initial531 := by
  with_unfolding_all rfl
#print axioms Initial531_eq
end InitE.BackendStages.TargetChecks
