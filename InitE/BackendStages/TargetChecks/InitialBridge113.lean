import InitE.BackendStages.Encoded113
import InitE.BackendStages.TargetChecks.Initial113
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial113_eq : InitE.BackendStages.Encoded113 = Initial113 := by
  with_unfolding_all rfl
#print axioms Initial113_eq
end InitE.BackendStages.TargetChecks
