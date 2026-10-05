import InitE.BackendStages.Encoded518
import InitE.BackendStages.TargetChecks.Initial518
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial518_eq : InitE.BackendStages.Encoded518 = Initial518 := by
  with_unfolding_all rfl
#print axioms Initial518_eq
end InitE.BackendStages.TargetChecks
