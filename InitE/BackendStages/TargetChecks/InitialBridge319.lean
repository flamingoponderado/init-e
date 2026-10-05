import InitE.BackendStages.Encoded319
import InitE.BackendStages.TargetChecks.Initial319
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial319_eq : InitE.BackendStages.Encoded319 = Initial319 := by
  with_unfolding_all rfl
#print axioms Initial319_eq
end InitE.BackendStages.TargetChecks
