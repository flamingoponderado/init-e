import InitE.BackendStages.Encoded645
import InitE.BackendStages.TargetChecks.Initial645
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial645_eq : InitE.BackendStages.Encoded645 = Initial645 := by
  with_unfolding_all rfl
#print axioms Initial645_eq
end InitE.BackendStages.TargetChecks
