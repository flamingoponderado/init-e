import InitE.BackendStages.Encoded502
import InitE.BackendStages.TargetChecks.Initial502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial502_eq : InitE.BackendStages.Encoded502 = Initial502 := by
  with_unfolding_all rfl
#print axioms Initial502_eq
end InitE.BackendStages.TargetChecks
