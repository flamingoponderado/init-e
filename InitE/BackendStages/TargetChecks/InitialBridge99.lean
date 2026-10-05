import InitE.BackendStages.Encoded99
import InitE.BackendStages.TargetChecks.Initial99
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial99_eq : InitE.BackendStages.Encoded99 = Initial99 := by
  with_unfolding_all rfl
#print axioms Initial99_eq
end InitE.BackendStages.TargetChecks
