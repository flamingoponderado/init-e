import InitE.BackendStages.Encoded469
import InitE.BackendStages.TargetChecks.Initial469
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial469_eq : InitE.BackendStages.Encoded469 = Initial469 := by
  with_unfolding_all rfl
#print axioms Initial469_eq
end InitE.BackendStages.TargetChecks
