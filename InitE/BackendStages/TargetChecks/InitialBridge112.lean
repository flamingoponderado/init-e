import InitE.BackendStages.Encoded112
import InitE.BackendStages.TargetChecks.Initial112
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial112_eq : InitE.BackendStages.Encoded112 = Initial112 := by
  with_unfolding_all rfl
#print axioms Initial112_eq
end InitE.BackendStages.TargetChecks
