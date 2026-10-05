import InitE.BackendStages.Encoded420
import InitE.BackendStages.TargetChecks.Initial420
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial420_eq : InitE.BackendStages.Encoded420 = Initial420 := by
  with_unfolding_all rfl
#print axioms Initial420_eq
end InitE.BackendStages.TargetChecks
