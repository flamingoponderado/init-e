import InitE.BackendStages.Encoded662
import InitE.BackendStages.TargetChecks.Initial662
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial662_eq : InitE.BackendStages.Encoded662 = Initial662 := by
  with_unfolding_all rfl
#print axioms Initial662_eq
end InitE.BackendStages.TargetChecks
