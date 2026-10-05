import InitE.BackendStages.Encoded838
import InitE.BackendStages.TargetChecks.Initial838
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial838_eq : InitE.BackendStages.Encoded838 = Initial838 := by
  with_unfolding_all rfl
#print axioms Initial838_eq
end InitE.BackendStages.TargetChecks
