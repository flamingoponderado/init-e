import InitE.BackendStages.Encoded387
import InitE.BackendStages.TargetChecks.Initial387
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial387_eq : InitE.BackendStages.Encoded387 = Initial387 := by
  with_unfolding_all rfl
#print axioms Initial387_eq
end InitE.BackendStages.TargetChecks
