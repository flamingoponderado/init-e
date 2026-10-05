import InitE.BackendStages.Encoded503
import InitE.BackendStages.TargetChecks.Initial503
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial503_eq : InitE.BackendStages.Encoded503 = Initial503 := by
  with_unfolding_all rfl
#print axioms Initial503_eq
end InitE.BackendStages.TargetChecks
