import InitE.BackendStages.Encoded468
import InitE.BackendStages.TargetChecks.Initial468
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial468_eq : InitE.BackendStages.Encoded468 = Initial468 := by
  with_unfolding_all rfl
#print axioms Initial468_eq
end InitE.BackendStages.TargetChecks
