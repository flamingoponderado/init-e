import InitE.BackendStages.Encoded410
import InitE.BackendStages.TargetChecks.Initial410
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial410_eq : InitE.BackendStages.Encoded410 = Initial410 := by
  with_unfolding_all rfl
#print axioms Initial410_eq
end InitE.BackendStages.TargetChecks
