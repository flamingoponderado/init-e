import InitE.BackendStages.Encoded565
import InitE.BackendStages.TargetChecks.Initial565
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial565_eq : InitE.BackendStages.Encoded565 = Initial565 := by
  with_unfolding_all rfl
#print axioms Initial565_eq
end InitE.BackendStages.TargetChecks
