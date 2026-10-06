import InitE.BackendStages.Encoded462
import InitE.BackendStages.TargetChecks.Initial462
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial462_eq : InitE.BackendStages.Encoded462 = Initial462 := by
  with_unfolding_all rfl
#print axioms Initial462_eq
end InitE.BackendStages.TargetChecks
