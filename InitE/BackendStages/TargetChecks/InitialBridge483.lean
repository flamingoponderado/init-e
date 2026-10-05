import InitE.BackendStages.Encoded483
import InitE.BackendStages.TargetChecks.Initial483
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial483_eq : InitE.BackendStages.Encoded483 = Initial483 := by
  with_unfolding_all rfl
#print axioms Initial483_eq
end InitE.BackendStages.TargetChecks
