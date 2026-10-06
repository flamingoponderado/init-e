import InitE.BackendStages.Encoded341
import InitE.BackendStages.TargetChecks.Initial341
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial341_eq : InitE.BackendStages.Encoded341 = Initial341 := by
  with_unfolding_all rfl
#print axioms Initial341_eq
end InitE.BackendStages.TargetChecks
