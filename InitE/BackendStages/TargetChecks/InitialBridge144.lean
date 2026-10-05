import InitE.BackendStages.Encoded144
import InitE.BackendStages.TargetChecks.Initial144
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial144_eq : InitE.BackendStages.Encoded144 = Initial144 := by
  with_unfolding_all rfl
#print axioms Initial144_eq
end InitE.BackendStages.TargetChecks
