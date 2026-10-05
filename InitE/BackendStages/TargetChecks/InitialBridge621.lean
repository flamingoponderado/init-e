import InitE.BackendStages.Encoded621
import InitE.BackendStages.TargetChecks.Initial621
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial621_eq : InitE.BackendStages.Encoded621 = Initial621 := by
  with_unfolding_all rfl
#print axioms Initial621_eq
end InitE.BackendStages.TargetChecks
