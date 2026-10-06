import InitE.BackendStages.Encoded84
import InitE.BackendStages.TargetChecks.Initial84
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial84_eq : InitE.BackendStages.Encoded84 = Initial84 := by
  with_unfolding_all rfl
#print axioms Initial84_eq
end InitE.BackendStages.TargetChecks
