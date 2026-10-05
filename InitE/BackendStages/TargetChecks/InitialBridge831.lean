import InitE.BackendStages.Encoded831
import InitE.BackendStages.TargetChecks.Initial831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial831_eq : InitE.BackendStages.Encoded831 = Initial831 := by
  with_unfolding_all rfl
#print axioms Initial831_eq
end InitE.BackendStages.TargetChecks
