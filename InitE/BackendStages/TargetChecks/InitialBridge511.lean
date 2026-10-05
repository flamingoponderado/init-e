import InitE.BackendStages.Encoded511
import InitE.BackendStages.TargetChecks.Initial511
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial511_eq : InitE.BackendStages.Encoded511 = Initial511 := by
  with_unfolding_all rfl
#print axioms Initial511_eq
end InitE.BackendStages.TargetChecks
