import InitE.BackendStages.Encoded484
import InitE.BackendStages.TargetChecks.Initial484
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial484_eq : InitE.BackendStages.Encoded484 = Initial484 := by
  with_unfolding_all rfl
#print axioms Initial484_eq
end InitE.BackendStages.TargetChecks
