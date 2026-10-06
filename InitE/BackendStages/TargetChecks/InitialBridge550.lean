import InitE.BackendStages.Encoded550
import InitE.BackendStages.TargetChecks.Initial550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial550_eq : InitE.BackendStages.Encoded550 = Initial550 := by
  with_unfolding_all rfl
#print axioms Initial550_eq
end InitE.BackendStages.TargetChecks
