import InitE.BackendStages.Encoded254
import InitE.BackendStages.TargetChecks.Initial254
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial254_eq : InitE.BackendStages.Encoded254 = Initial254 := by
  with_unfolding_all rfl
#print axioms Initial254_eq
end InitE.BackendStages.TargetChecks
