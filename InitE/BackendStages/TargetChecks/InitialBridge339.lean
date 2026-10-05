import InitE.BackendStages.Encoded339
import InitE.BackendStages.TargetChecks.Initial339
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial339_eq : InitE.BackendStages.Encoded339 = Initial339 := by
  with_unfolding_all rfl
#print axioms Initial339_eq
end InitE.BackendStages.TargetChecks
