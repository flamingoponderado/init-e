import InitE.BackendStages.Encoded344
import InitE.BackendStages.TargetChecks.Initial344
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial344_eq : InitE.BackendStages.Encoded344 = Initial344 := by
  with_unfolding_all rfl
#print axioms Initial344_eq
end InitE.BackendStages.TargetChecks
