import InitE.BackendStages.Encoded346
import InitE.BackendStages.TargetChecks.Initial346
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial346_eq : InitE.BackendStages.Encoded346 = Initial346 := by
  with_unfolding_all rfl
#print axioms Initial346_eq
end InitE.BackendStages.TargetChecks
