import InitE.BackendStages.Encoded466
import InitE.BackendStages.TargetChecks.Initial466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial466_eq : InitE.BackendStages.Encoded466 = Initial466 := by
  with_unfolding_all rfl
#print axioms Initial466_eq
end InitE.BackendStages.TargetChecks
