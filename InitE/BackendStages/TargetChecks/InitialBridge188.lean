import InitE.BackendStages.Encoded188
import InitE.BackendStages.TargetChecks.Initial188
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial188_eq : InitE.BackendStages.Encoded188 = Initial188 := by
  with_unfolding_all rfl
#print axioms Initial188_eq
end InitE.BackendStages.TargetChecks
