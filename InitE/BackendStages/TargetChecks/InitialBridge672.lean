import InitE.BackendStages.Encoded672
import InitE.BackendStages.TargetChecks.Initial672
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial672_eq : InitE.BackendStages.Encoded672 = Initial672 := by
  with_unfolding_all rfl
#print axioms Initial672_eq
end InitE.BackendStages.TargetChecks
