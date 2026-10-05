import InitE.BackendStages.Encoded490
import InitE.BackendStages.TargetChecks.Initial490
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial490_eq : InitE.BackendStages.Encoded490 = Initial490 := by
  with_unfolding_all rfl
#print axioms Initial490_eq
end InitE.BackendStages.TargetChecks
