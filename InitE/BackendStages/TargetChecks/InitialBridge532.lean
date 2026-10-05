import InitE.BackendStages.Encoded532
import InitE.BackendStages.TargetChecks.Initial532
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial532_eq : InitE.BackendStages.Encoded532 = Initial532 := by
  with_unfolding_all rfl
#print axioms Initial532_eq
end InitE.BackendStages.TargetChecks
