import InitE.BackendStages.Encoded538
import InitE.BackendStages.TargetChecks.Initial538
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial538_eq : InitE.BackendStages.Encoded538 = Initial538 := by
  with_unfolding_all rfl
#print axioms Initial538_eq
end InitE.BackendStages.TargetChecks
