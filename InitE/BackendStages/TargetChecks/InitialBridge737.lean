import InitE.BackendStages.Encoded737
import InitE.BackendStages.TargetChecks.Initial737
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial737_eq : InitE.BackendStages.Encoded737 = Initial737 := by
  with_unfolding_all rfl
#print axioms Initial737_eq
end InitE.BackendStages.TargetChecks
