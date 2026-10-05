import InitE.BackendStages.Encoded545
import InitE.BackendStages.TargetChecks.Initial545
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial545_eq : InitE.BackendStages.Encoded545 = Initial545 := by
  with_unfolding_all rfl
#print axioms Initial545_eq
end InitE.BackendStages.TargetChecks
