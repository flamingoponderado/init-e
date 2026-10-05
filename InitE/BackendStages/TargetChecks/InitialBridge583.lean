import InitE.BackendStages.Encoded583
import InitE.BackendStages.TargetChecks.Initial583
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial583_eq : InitE.BackendStages.Encoded583 = Initial583 := by
  with_unfolding_all rfl
#print axioms Initial583_eq
end InitE.BackendStages.TargetChecks
