import InitE.BackendStages.Encoded551
import InitE.BackendStages.TargetChecks.Initial551
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial551_eq : InitE.BackendStages.Encoded551 = Initial551 := by
  with_unfolding_all rfl
#print axioms Initial551_eq
end InitE.BackendStages.TargetChecks
