import InitE.BackendStages.Encoded82
import InitE.BackendStages.TargetChecks.Initial82
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial82_eq : InitE.BackendStages.Encoded82 = Initial82 := by
  with_unfolding_all rfl
#print axioms Initial82_eq
end InitE.BackendStages.TargetChecks
