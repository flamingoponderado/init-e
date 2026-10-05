import InitE.BackendStages.Encoded180
import InitE.BackendStages.TargetChecks.Initial180
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial180_eq : InitE.BackendStages.Encoded180 = Initial180 := by
  with_unfolding_all rfl
#print axioms Initial180_eq
end InitE.BackendStages.TargetChecks
