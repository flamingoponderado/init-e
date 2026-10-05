import InitE.BackendStages.Encoded352
import InitE.BackendStages.TargetChecks.Initial352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial352_eq : InitE.BackendStages.Encoded352 = Initial352 := by
  with_unfolding_all rfl
#print axioms Initial352_eq
end InitE.BackendStages.TargetChecks
