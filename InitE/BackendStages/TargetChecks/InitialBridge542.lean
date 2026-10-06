import InitE.BackendStages.Encoded542
import InitE.BackendStages.TargetChecks.Initial542
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial542_eq : InitE.BackendStages.Encoded542 = Initial542 := by
  with_unfolding_all rfl
#print axioms Initial542_eq
end InitE.BackendStages.TargetChecks
