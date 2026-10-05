import InitE.BackendStages.Encoded486
import InitE.BackendStages.TargetChecks.Initial486
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial486_eq : InitE.BackendStages.Encoded486 = Initial486 := by
  with_unfolding_all rfl
#print axioms Initial486_eq
end InitE.BackendStages.TargetChecks
