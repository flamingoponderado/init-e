import InitE.BackendStages.Encoded314
import InitE.BackendStages.TargetChecks.Initial314
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial314_eq : InitE.BackendStages.Encoded314 = Initial314 := by
  with_unfolding_all rfl
#print axioms Initial314_eq
end InitE.BackendStages.TargetChecks
