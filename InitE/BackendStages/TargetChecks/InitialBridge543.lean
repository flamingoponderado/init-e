import InitE.BackendStages.Encoded543
import InitE.BackendStages.TargetChecks.Initial543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial543_eq : InitE.BackendStages.Encoded543 = Initial543 := by
  with_unfolding_all rfl
#print axioms Initial543_eq
end InitE.BackendStages.TargetChecks
