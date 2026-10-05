import InitE.BackendStages.Encoded223
import InitE.BackendStages.TargetChecks.Initial223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial223_eq : InitE.BackendStages.Encoded223 = Initial223 := by
  with_unfolding_all rfl
#print axioms Initial223_eq
end InitE.BackendStages.TargetChecks
