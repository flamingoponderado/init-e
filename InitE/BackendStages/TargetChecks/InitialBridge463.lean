import InitE.BackendStages.Encoded463
import InitE.BackendStages.TargetChecks.Initial463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial463_eq : InitE.BackendStages.Encoded463 = Initial463 := by
  with_unfolding_all rfl
#print axioms Initial463_eq
end InitE.BackendStages.TargetChecks
