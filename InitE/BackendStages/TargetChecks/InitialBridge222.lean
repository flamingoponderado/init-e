import InitE.BackendStages.Encoded222
import InitE.BackendStages.TargetChecks.Initial222
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial222_eq : InitE.BackendStages.Encoded222 = Initial222 := by
  with_unfolding_all rfl
#print axioms Initial222_eq
end InitE.BackendStages.TargetChecks
