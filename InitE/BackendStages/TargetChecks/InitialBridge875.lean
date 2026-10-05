import InitE.BackendStages.Encoded875
import InitE.BackendStages.TargetChecks.Initial875
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial875_eq : InitE.BackendStages.Encoded875 = Initial875 := by
  with_unfolding_all rfl
#print axioms Initial875_eq
end InitE.BackendStages.TargetChecks
