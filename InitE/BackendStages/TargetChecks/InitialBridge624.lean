import InitE.BackendStages.Encoded624
import InitE.BackendStages.TargetChecks.Initial624
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial624_eq : InitE.BackendStages.Encoded624 = Initial624 := by
  with_unfolding_all rfl
#print axioms Initial624_eq
end InitE.BackendStages.TargetChecks
