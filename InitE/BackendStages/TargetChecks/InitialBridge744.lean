import InitE.BackendStages.Encoded744
import InitE.BackendStages.TargetChecks.Initial744
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial744_eq : InitE.BackendStages.Encoded744 = Initial744 := by
  with_unfolding_all rfl
#print axioms Initial744_eq
end InitE.BackendStages.TargetChecks
