import InitE.BackendStages.Encoded631
import InitE.BackendStages.TargetChecks.Initial631
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial631_eq : InitE.BackendStages.Encoded631 = Initial631 := by
  with_unfolding_all rfl
#print axioms Initial631_eq
end InitE.BackendStages.TargetChecks
