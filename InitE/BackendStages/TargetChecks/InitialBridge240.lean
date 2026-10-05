import InitE.BackendStages.Encoded240
import InitE.BackendStages.TargetChecks.Initial240
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial240_eq : InitE.BackendStages.Encoded240 = Initial240 := by
  with_unfolding_all rfl
#print axioms Initial240_eq
end InitE.BackendStages.TargetChecks
