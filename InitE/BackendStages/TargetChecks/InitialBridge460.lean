import InitE.BackendStages.Encoded460
import InitE.BackendStages.TargetChecks.Initial460
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial460_eq : InitE.BackendStages.Encoded460 = Initial460 := by
  with_unfolding_all rfl
#print axioms Initial460_eq
end InitE.BackendStages.TargetChecks
