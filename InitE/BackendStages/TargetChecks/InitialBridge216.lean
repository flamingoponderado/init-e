import InitE.BackendStages.Encoded216
import InitE.BackendStages.TargetChecks.Initial216
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial216_eq : InitE.BackendStages.Encoded216 = Initial216 := by
  with_unfolding_all rfl
#print axioms Initial216_eq
end InitE.BackendStages.TargetChecks
