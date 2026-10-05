import InitE.BackendStages.Encoded772
import InitE.BackendStages.TargetChecks.Initial772
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial772_eq : InitE.BackendStages.Encoded772 = Initial772 := by
  with_unfolding_all rfl
#print axioms Initial772_eq
end InitE.BackendStages.TargetChecks
