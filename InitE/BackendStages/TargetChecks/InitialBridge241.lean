import InitE.BackendStages.Encoded241
import InitE.BackendStages.TargetChecks.Initial241
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial241_eq : InitE.BackendStages.Encoded241 = Initial241 := by
  with_unfolding_all rfl
#print axioms Initial241_eq
end InitE.BackendStages.TargetChecks
