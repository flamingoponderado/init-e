import InitE.BackendStages.Encoded625
import InitE.BackendStages.TargetChecks.Initial625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial625_eq : InitE.BackendStages.Encoded625 = Initial625 := by
  with_unfolding_all rfl
#print axioms Initial625_eq
end InitE.BackendStages.TargetChecks
