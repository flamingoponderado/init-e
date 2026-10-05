import InitE.BackendStages.Encoded412
import InitE.BackendStages.TargetChecks.Initial412
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial412_eq : InitE.BackendStages.Encoded412 = Initial412 := by
  with_unfolding_all rfl
#print axioms Initial412_eq
end InitE.BackendStages.TargetChecks
