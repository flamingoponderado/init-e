import InitE.BackendStages.Encoded487
import InitE.BackendStages.TargetChecks.Initial487
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial487_eq : InitE.BackendStages.Encoded487 = Initial487 := by
  with_unfolding_all rfl
#print axioms Initial487_eq
end InitE.BackendStages.TargetChecks
