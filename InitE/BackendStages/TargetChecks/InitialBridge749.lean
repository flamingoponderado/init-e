import InitE.BackendStages.Encoded749
import InitE.BackendStages.TargetChecks.Initial749
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial749_eq : InitE.BackendStages.Encoded749 = Initial749 := by
  with_unfolding_all rfl
#print axioms Initial749_eq
end InitE.BackendStages.TargetChecks
