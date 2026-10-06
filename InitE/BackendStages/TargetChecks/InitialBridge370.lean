import InitE.BackendStages.Encoded370
import InitE.BackendStages.TargetChecks.Initial370
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial370_eq : InitE.BackendStages.Encoded370 = Initial370 := by
  with_unfolding_all rfl
#print axioms Initial370_eq
end InitE.BackendStages.TargetChecks
