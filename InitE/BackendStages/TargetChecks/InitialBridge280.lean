import InitE.BackendStages.Encoded280
import InitE.BackendStages.TargetChecks.Initial280
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial280_eq : InitE.BackendStages.Encoded280 = Initial280 := by
  with_unfolding_all rfl
#print axioms Initial280_eq
end InitE.BackendStages.TargetChecks
