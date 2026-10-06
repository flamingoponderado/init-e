import InitE.BackendStages.Encoded725
import InitE.BackendStages.TargetChecks.Initial725
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial725_eq : InitE.BackendStages.Encoded725 = Initial725 := by
  with_unfolding_all rfl
#print axioms Initial725_eq
end InitE.BackendStages.TargetChecks
