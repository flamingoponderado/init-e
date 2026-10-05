import InitE.BackendStages.Encoded650
import InitE.BackendStages.TargetChecks.Initial650
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial650_eq : InitE.BackendStages.Encoded650 = Initial650 := by
  with_unfolding_all rfl
#print axioms Initial650_eq
end InitE.BackendStages.TargetChecks
