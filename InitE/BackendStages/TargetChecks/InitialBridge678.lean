import InitE.BackendStages.Encoded678
import InitE.BackendStages.TargetChecks.Initial678
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial678_eq : InitE.BackendStages.Encoded678 = Initial678 := by
  with_unfolding_all rfl
#print axioms Initial678_eq
end InitE.BackendStages.TargetChecks
