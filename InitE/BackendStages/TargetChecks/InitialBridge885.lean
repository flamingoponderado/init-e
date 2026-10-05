import InitE.BackendStages.Encoded885
import InitE.BackendStages.TargetChecks.Initial885
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial885_eq : InitE.BackendStages.Encoded885 = Initial885 := by
  with_unfolding_all rfl
#print axioms Initial885_eq
end InitE.BackendStages.TargetChecks
