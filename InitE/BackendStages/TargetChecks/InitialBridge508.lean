import InitE.BackendStages.Encoded508
import InitE.BackendStages.TargetChecks.Initial508
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial508_eq : InitE.BackendStages.Encoded508 = Initial508 := by
  with_unfolding_all rfl
#print axioms Initial508_eq
end InitE.BackendStages.TargetChecks
