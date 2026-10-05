import InitE.BackendStages.Encoded163
import InitE.BackendStages.TargetChecks.Initial163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial163_eq : InitE.BackendStages.Encoded163 = Initial163 := by
  with_unfolding_all rfl
#print axioms Initial163_eq
end InitE.BackendStages.TargetChecks
