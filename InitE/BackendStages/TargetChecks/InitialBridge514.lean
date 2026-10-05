import InitE.BackendStages.Encoded514
import InitE.BackendStages.TargetChecks.Initial514
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial514_eq : InitE.BackendStages.Encoded514 = Initial514 := by
  with_unfolding_all rfl
#print axioms Initial514_eq
end InitE.BackendStages.TargetChecks
