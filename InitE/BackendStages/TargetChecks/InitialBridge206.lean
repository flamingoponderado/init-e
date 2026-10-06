import InitE.BackendStages.Encoded206
import InitE.BackendStages.TargetChecks.Initial206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial206_eq : InitE.BackendStages.Encoded206 = Initial206 := by
  with_unfolding_all rfl
#print axioms Initial206_eq
end InitE.BackendStages.TargetChecks
