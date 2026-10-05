import InitE.BackendStages.Encoded154
import InitE.BackendStages.TargetChecks.Initial154
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial154_eq : InitE.BackendStages.Encoded154 = Initial154 := by
  with_unfolding_all rfl
#print axioms Initial154_eq
end InitE.BackendStages.TargetChecks
