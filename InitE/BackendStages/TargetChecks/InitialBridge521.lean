import InitE.BackendStages.Encoded521
import InitE.BackendStages.TargetChecks.Initial521
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial521_eq : InitE.BackendStages.Encoded521 = Initial521 := by
  with_unfolding_all rfl
#print axioms Initial521_eq
end InitE.BackendStages.TargetChecks
