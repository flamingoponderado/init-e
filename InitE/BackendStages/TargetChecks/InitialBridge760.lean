import InitE.BackendStages.Encoded760
import InitE.BackendStages.TargetChecks.Initial760
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial760_eq : InitE.BackendStages.Encoded760 = Initial760 := by
  with_unfolding_all rfl
#print axioms Initial760_eq
end InitE.BackendStages.TargetChecks
