import InitE.BackendStages.Encoded435
import InitE.BackendStages.TargetChecks.Initial435
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial435_eq : InitE.BackendStages.Encoded435 = Initial435 := by
  with_unfolding_all rfl
#print axioms Initial435_eq
end InitE.BackendStages.TargetChecks
