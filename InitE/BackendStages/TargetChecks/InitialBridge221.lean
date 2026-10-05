import InitE.BackendStages.Encoded221
import InitE.BackendStages.TargetChecks.Initial221
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial221_eq : InitE.BackendStages.Encoded221 = Initial221 := by
  with_unfolding_all rfl
#print axioms Initial221_eq
end InitE.BackendStages.TargetChecks
