import InitE.BackendStages.Encoded732
import InitE.BackendStages.TargetChecks.Initial732
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial732_eq : InitE.BackendStages.Encoded732 = Initial732 := by
  with_unfolding_all rfl
#print axioms Initial732_eq
end InitE.BackendStages.TargetChecks
