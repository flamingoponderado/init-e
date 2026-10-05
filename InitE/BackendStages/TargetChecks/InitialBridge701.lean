import InitE.BackendStages.Encoded701
import InitE.BackendStages.TargetChecks.Initial701
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial701_eq : InitE.BackendStages.Encoded701 = Initial701 := by
  with_unfolding_all rfl
#print axioms Initial701_eq
end InitE.BackendStages.TargetChecks
