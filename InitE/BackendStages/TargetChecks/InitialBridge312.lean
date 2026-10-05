import InitE.BackendStages.Encoded312
import InitE.BackendStages.TargetChecks.Initial312
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial312_eq : InitE.BackendStages.Encoded312 = Initial312 := by
  with_unfolding_all rfl
#print axioms Initial312_eq
end InitE.BackendStages.TargetChecks
