import InitE.BackendStages.Encoded333
import InitE.BackendStages.TargetChecks.Initial333
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial333_eq : InitE.BackendStages.Encoded333 = Initial333 := by
  with_unfolding_all rfl
#print axioms Initial333_eq
end InitE.BackendStages.TargetChecks
