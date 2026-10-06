import InitE.BackendStages.Encoded648
import InitE.BackendStages.TargetChecks.Initial648
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial648_eq : InitE.BackendStages.Encoded648 = Initial648 := by
  with_unfolding_all rfl
#print axioms Initial648_eq
end InitE.BackendStages.TargetChecks
